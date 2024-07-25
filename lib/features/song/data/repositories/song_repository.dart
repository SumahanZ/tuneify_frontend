import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tuneify/core/exception/exception.dart';
import 'package:tuneify/core/failure/failure.dart';
import 'package:tuneify/core/providers/shared_preference_provider.dart';
import 'package:tuneify/core/typealias/typealias.dart';
import 'package:tuneify/features/song/data/datasources/song_local_datasource.dart';
import 'package:tuneify/features/song/data/datasources/song_remote_datasource.dart';
import 'package:tuneify/features/song/domain/entities/song_entity.dart';
import 'package:tuneify/features/song/domain/repositories/song_repository.dart';

final songRepositoryProvider = Provider(
  (ref) => SongRepositoryImpl(
    ref.watch(songRemoteDataSourceProvider),
    ref.watch(sharedPrefProvider),
    ref.watch(songLocalDataSourceProvider),
  ),
);

class SongRepositoryImpl implements SongRepository {
  final SongRemoteDataSource _songRemoteDataSource;
  final SongLocalDataSource _songLocalDataSource;
  final SharedPrefService _sharedPref;

  SongRepositoryImpl(
    this._songRemoteDataSource,
    this._sharedPref,
    this._songLocalDataSource,
  );

  @override
  ResultFuture<SongEntity> uploadSong({
    required String audioFilePath,
    required String thumbnailFilePath,
    required String artist,
    required String name,
    required String hexCode,
  }) async {
    try {
      final tokens = await _sharedPref.read("tokens");
      final uploadedSong = await _songRemoteDataSource.uploadSong(
        tokens: tokens,
        audioFilePath: audioFilePath,
        thumbnailFilePath: thumbnailFilePath,
        artist: artist,
        name: name,
        hexCode: hexCode,
      );

      return Right(uploadedSong);
    } on ServerException catch (err) {
      return Left(ServerFailure.fromException(err));
    } on UnknownException catch (err) {
      return Left(UnknownFailure.fromException(err));
    }
  }

  @override
  ResultFuture<List<SongEntity>> getLatestSongs() async {
    try {
      final tokens = await _sharedPref.read("tokens");
      final uploadedSongs = await _songRemoteDataSource.getLatestSongs(tokens);

      return Right(uploadedSongs);
    } on ServerException catch (err) {
      return Left(ServerFailure.fromException(err));
    } on UnknownException catch (err) {
      return Left(UnknownFailure.fromException(err));
    }
  }

  @override
  Result<void> uploadLocalSongs(SongEntity song) {
    try {
      _songLocalDataSource.uploadLocalSong(song);
      return const Right(null);
    } on HiveException catch (err) {
      return Left(HiveFailure.fromException(err));
    }
  }

  @override
  Result<List<SongEntity>> getRecentlyPlayedSongs() {
    try {
      final songs = _songLocalDataSource.loadSongs();
      //maybe do some filtering logic here
      return Right(songs);
    } on HiveException catch (err) {
      return Left(HiveFailure.fromException(err));
    }
  }

  @override
  Future<Result<String>> addRemoveFavorite(String songId) async {
    try {
      final tokens = await _sharedPref.read("tokens");
      final message =
          await _songRemoteDataSource.addRemoveFavorites(tokens, songId);

      return Right(message);
    } on ServerException catch (err) {
      return Left(ServerFailure.fromException(err));
    } on UnknownException catch (err) {
      return Left(UnknownFailure.fromException(err));
    }
  }

  @override
  Future<Result<List<SongEntity>>> getSongFavorites() async {
    try {
      final tokens = await _sharedPref.read("tokens");
      final uploadedSongs =
          await _songRemoteDataSource.getSongFavorites(tokens);

      return Right(uploadedSongs);
    } on ServerException catch (err) {
      return Left(ServerFailure.fromException(err));
    } on UnknownException catch (err) {
      return Left(UnknownFailure.fromException(err));
    }
  }
}
