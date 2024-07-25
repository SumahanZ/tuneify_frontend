import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/typealias/typealias.dart';
import 'package:tuneify/core/usecase/use_case.dart';
import 'package:tuneify/features/song/data/repositories/song_repository.dart';
import 'package:tuneify/features/song/domain/entities/song_entity.dart';
import 'package:tuneify/features/song/domain/repositories/song_repository.dart';

final uploadLocalSongsProvider = Provider(
  (ref) => UploadLocalSongsUseCase(ref.watch(songRepositoryProvider)),
);

final class UploadLocalSongsUseCase
    implements UseCase<Result<void>, SongEntity> {
  final SongRepository _songRepository;

  UploadLocalSongsUseCase(this._songRepository);

  @override
  Result<void> call(SongEntity param) {
    return _songRepository.uploadLocalSongs(param);
  }
}
