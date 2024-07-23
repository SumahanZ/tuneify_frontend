import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/typealias/typealias.dart';
import 'package:tuneify/core/usecase/use_case.dart';
import 'package:tuneify/features/song/data/repositories/song_repository.dart';
import 'package:tuneify/features/song/domain/entities/song_entity.dart';
import 'package:tuneify/features/song/domain/repositories/song_repository.dart';

final uploadSongProvider =
    Provider((ref) => UploadSongUseCase(ref.watch(songRepositoryProvider)));

final class UploadSongUseCase
    implements UseCase<ResultFuture<SongEntity>, UploadSongParams> {
  final SongRepository _songRepository;

  UploadSongUseCase(this._songRepository);

  @override
  ResultFuture<SongEntity> call(UploadSongParams params) {
    return _songRepository.uploadSong(
      audioFilePath: params.audioFilePath,
      thumbnailFilePath: params.thumbnailFilePath,
      artist: params.artist,
      name: params.name,
      hexCode: params.hexCode,
    );
  }
}

class UploadSongParams {
  final String artist;
  final String name;
  final String audioFilePath;
  final String thumbnailFilePath;
  final String hexCode;

  UploadSongParams({
    required this.artist,
    required this.name,
    required this.audioFilePath,
    required this.thumbnailFilePath,
    required this.hexCode,
  });
}
