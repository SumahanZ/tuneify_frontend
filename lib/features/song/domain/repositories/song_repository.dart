import 'package:tuneify/core/typealias/typealias.dart';
import 'package:tuneify/features/song/domain/entities/song_entity.dart';

abstract class SongRepository {
  ResultFuture<SongEntity> uploadSong();
}
