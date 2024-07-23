import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/typealias/typealias.dart';
import 'package:tuneify/core/usecase/use_case.dart';
import 'package:tuneify/features/song/data/models/song_model.dart';
import 'package:tuneify/features/song/data/repositories/song_repository.dart';
import 'package:tuneify/features/song/domain/repositories/song_repository.dart';

final uploadLocalSongsProvider = Provider(
  (ref) => UploadLocalSongsUseCase(ref.watch(songRepositoryProvider)),
);

final class UploadLocalSongsUseCase
    implements UseCase<Result<void>, SongModel> {
  final SongRepository _songRepository;

  UploadLocalSongsUseCase(this._songRepository);

  @override
  Result<void> call(SongModel param) {
    return _songRepository.uploadLocalSongs(param);
  }
}
