import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuneify/core/providers/current_user_provider.dart';
import 'package:tuneify/features/song/data/models/fav_song_model.dart';
import 'package:tuneify/features/song/data/models/song_model.dart';
import 'package:tuneify/features/song/domain/entities/song_entity.dart';
import 'package:tuneify/features/song/domain/usecases/add_remove_favorites.dart';
import 'package:tuneify/features/song/domain/usecases/get_latest_songs.dart';
import 'package:tuneify/features/song/domain/usecases/get_recently_played_songs.dart';
import 'package:tuneify/features/song/domain/usecases/get_user_favorites.dart';
import 'package:tuneify/features/song/domain/usecases/upload_local_songs.dart';
import 'package:tuneify/features/song/domain/usecases/upload_song.dart';
import 'package:tuneify/features/song/presentation/providers/song_state.dart';
part 'song_notifier.g.dart';

final songUseCaseProvider = Provider(
  (ref) => SongUseCases(
    uploadSong: ref.watch(uploadSongProvider),
    getLatestSongs: ref.watch(getLatestSongsProvider),
    uploadLocalSongs: ref.watch(uploadLocalSongsProvider),
    getRecentPlayedSongs: ref.watch(getRecentlyPlayedSongsProvider),
    addRemoveFavorite: ref.watch(addRemoveFavoriteProvider),
    getUserFavorites: ref.watch(getUserFavoritesProvider),
  ),
);

final getAllSongs = FutureProvider.autoDispose<List<SongEntity>>((ref) async {
  final result = await ref.read(songUseCaseProvider).getLatestSongs();
  return result.fold(
    (l) => throw l.message,
    (r) => r,
  );
});

final getFavoriteSongs =
    FutureProvider.autoDispose<List<SongEntity>>((ref) async {
  final result = await ref.read(songUseCaseProvider).getUserFavorites();
  return result.fold(
    (l) => throw l.message,
    (r) => r,
  );
});

@riverpod
class SongNotifier extends _$SongNotifier {
  @override
  SongState build() {
    return const SongState.initial();
  }

  void uploadSong({
    required String artist,
    required String name,
    required String audioFilePath,
    required String thumbnailFilePath,
    required String hexCode,
  }) async {
    state = const SongState.loading();
    final result = await ref.read(songUseCaseProvider).uploadSong(
          UploadSongParams(
            artist: artist,
            name: name,
            audioFilePath: audioFilePath,
            thumbnailFilePath: thumbnailFilePath,
            hexCode: hexCode,
          ),
        );

    result.fold(
      (l) => state = SongState.failure(l),
      (r) => state = SongState.uploadSuccess(r),
    );
  }

  List<SongEntity> getRecentlyPlayedSongs() {
    final result = ref.read(songUseCaseProvider).getRecentPlayedSongs();
    List<SongEntity> songs = [];

    result.foldRight(null, (_, b) {
      songs = b;
    });

    return songs;
  }

  void uploadLocalSongs(SongModel song) {
    final result = ref.read(songUseCaseProvider).uploadLocalSongs(song);

    result.fold(
      (l) => state = SongState.failure(l),
      (r) => null,
    );
  }

  void addRemoveFavorites(String songId) async {
    final result =
        await ref.read(songUseCaseProvider).addRemoveFavorite(songId);

    try {
      result.fold(
        (l) => state = SongState.failure(l),
        (r) {
          final copiedState = ref.read(currentUserProvider.notifier).state;
          if (r == "Added song!") {
            copiedState?.favoriteSongs.add(
              FavoriteModel(
                user: ref.read(currentUserProvider)?.id ?? "",
                song: songId,
              ),
            );
          } else {
            copiedState?.favoriteSongs
                .removeWhere((element) => element.song == songId);
          }

          ref.read(currentUserProvider.notifier).update((state) {
            return state?.copyWith(favoriteSongs: copiedState?.favoriteSongs);
          });

          ref.invalidate(getFavoriteSongs);
          state = SongState.addRemoveFavoriteSuccess(r);
        },
      );
    } catch (err) {
      print(err);
    }
  }
}

class SongUseCases {
  final UploadSongUseCase uploadSong;
  final GetLatestSongsUseCase getLatestSongs;
  final GetRecentlyPlayedSongsUseCase getRecentPlayedSongs;
  final UploadLocalSongsUseCase uploadLocalSongs;
  final AddRemoveFavoriteUseCase addRemoveFavorite;
  final GetUsersFavoriteUseCase getUserFavorites;

  SongUseCases({
    required this.uploadSong,
    required this.getLatestSongs,
    required this.getRecentPlayedSongs,
    required this.uploadLocalSongs,
    required this.addRemoveFavorite,
    required this.getUserFavorites,
  });
}
