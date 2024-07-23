import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/exception/exception.dart';
import 'package:tuneify/core/providers/hive_provider.dart';
import 'package:tuneify/features/song/data/models/song_model.dart';

final songLocalDataSourceProvider = Provider(
  (ref) => SongLocalDataSourceImpl(
    ref.watch(hiveServiceProvider),
  ),
);

abstract class SongLocalDataSource {
  List<SongModel> loadSongs();
  void uploadLocalSong(SongModel song);
}

class SongLocalDataSourceImpl implements SongLocalDataSource {
  final HiveService _hive;

  SongLocalDataSourceImpl(this._hive);

  @override
  List<SongModel> loadSongs() {
    try {
      final songsBox = _hive.getBox("songs");

      return songsBox.keys.map((key) {
        return SongModel.fromJson(
          _hive.getEntity<String>(key: key, boxName: "songs"),
        );
      }).toList();
    } catch (err) {
      throw HiveException(message: err.toString());
    }
  }

  @override
  void uploadLocalSong(SongModel song) {
    try {
      _hive.createUpdateEntity(key: song.id, boxName: "songs", data: "data");
    } catch (err) {
      throw HiveException(message: err.toString());
    }
  }
}
