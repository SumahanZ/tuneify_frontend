import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuneify/features/song/domain/usecases/get_latest_songs.dart';
import 'package:tuneify/features/song/domain/usecases/get_recently_played_songs.dart';
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
  ),
);

@riverpod
class SongNotifier extends _$SongNotifier {
  @override
  SongState build() {
    return const SongState.initial();
  }

  void getSongs() async {
    state = const SongState.loading();

    final result = await ref.read(songUseCaseProvider).getLatestSongs();
    result.fold(
      (l) => state = SongState.failure(l),
      (r) => state = SongState.fetchSuccess(r),
    );
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

  void getRecentlyPlayedSongs({
    required String artist,
    required String name,
    required String audioFilePath,
    required String thumbnailFilePath,
    required String hexCode,
  }) async {
    state = const SongState.loading();
    // final result = await ref.read(songUseCaseProvider).uploadSong(
    //       UploadSongParams(
    //         artist: artist,
    //         name: name,
    //         audioFilePath: audioFilePath,
    //         thumbnailFilePath: thumbnailFilePath,
    //         hexCode: hexCode,
    //       ),
    //     );

    // result.fold(
    //   (l) => state = SongState.failure(l),
    //   (r) => state = SongState.uploadSuccess(r),
    // );
  }

  void uploadLocalSongs({
    required String artist,
    required String name,
    required String audioFilePath,
    required String thumbnailFilePath,
    required String hexCode,
  }) async {
    state = const SongState.loading();
    // final result = await ref.read(songUseCaseProvider).uploadSong(
    //       UploadSongParams(
    //         artist: artist,
    //         name: name,
    //         audioFilePath: audioFilePath,
    //         thumbnailFilePath: thumbnailFilePath,
    //         hexCode: hexCode,
    //       ),
    //     );

    // result.fold(
    //   (l) => state = SongState.failure(l),
    //   (r) => state = SongState.uploadSuccess(r),
    // );
  }
}

class SongUseCases {
  final UploadSongUseCase uploadSong;
  final GetLatestSongsUseCase getLatestSongs;
  final GetRecentlyPlayedSongsUseCase getRecentPlayedSongs;
  final UploadLocalSongsUseCase uploadLocalSongs;

  SongUseCases({
    required this.uploadSong,
    required this.getLatestSongs,
    required this.getRecentPlayedSongs,
    required this.uploadLocalSongs,
  });
}
