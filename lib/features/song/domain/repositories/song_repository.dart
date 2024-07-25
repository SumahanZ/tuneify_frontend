import 'package:tuneify/core/typealias/typealias.dart';
import 'package:tuneify/features/song/domain/entities/song_entity.dart';

abstract class SongRepository {
  ResultFuture<SongEntity> uploadSong({
    required String audioFilePath,
    required String thumbnailFilePath,
    required String artist,
    required String name,
    required String hexCode,
  });

  ResultFuture<List<SongEntity>> getLatestSongs();

  Result<void> uploadLocalSongs(SongEntity song);

  Result<List<SongEntity>> getRecentlyPlayedSongs();

  ResultFuture<String> addRemoveFavorite(String songId);

  ResultFuture<List<SongEntity>> getSongFavorites();
}
