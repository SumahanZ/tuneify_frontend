import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/exception/exception.dart';
import 'package:tuneify/core/providers/hive_provider.dart';
import 'package:tuneify/features/song/data/models/song_model.dart';
import 'package:tuneify/features/song/domain/entities/song_entity.dart';

final songLocalDataSourceProvider = Provider(
  (ref) => SongLocalDataSourceImpl(
    ref.watch(hiveServiceProvider),
  ),
);

abstract class SongLocalDataSource {
  List<SongEntity> loadSongs();
  void uploadLocalSong(SongEntity song);
}

class SongLocalDataSourceImpl implements SongLocalDataSource {
  final HiveService _hive;

  SongLocalDataSourceImpl(this._hive);

  @override
  List<SongEntity> loadSongs() {
    try {
      final songsBox = _hive.getBox("songs");

      final songs = songsBox.keys.map((key) {
        return SongModel.fromJson(
          _hive.getEntity<String>(key: key, boxName: "songs"),
        );
      }).toList();

      return songs;
    } catch (err) {
      throw HiveException(message: err.toString());
    }
  }

  @override
  void uploadLocalSong(SongEntity song) {
    try {
      _hive.createUpdateEntity(
        key: song.id,
        boxName: "songs",
        data: song.toJson(),
      );

      // _hive.getBox("songs").deleteAll(_hive.getBox("songs").keys);
    } catch (err) {
      throw HiveException(message: err.toString());
    }
  }
}
