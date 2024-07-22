import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/typealias/typealias.dart';
import 'package:tuneify/features/song/data/datasources/song_remote_datasource.dart';
import 'package:tuneify/features/song/domain/entities/song_entity.dart';
import 'package:tuneify/features/song/domain/repositories/song_repository.dart';

final songRepositoryProvider = Provider(
  (ref) => SongRepositoryImpl(ref.watch(songRemoteDataSourceProvider)),
);

class SongRepositoryImpl implements SongRepository {
  final SongRemoteDataSource _songRemoteDataSource;

  SongRepositoryImpl(this._songRemoteDataSource);

  @override
  ResultFuture<SongEntity> uploadSong() {
    throw UnimplementedError();
  }
}
