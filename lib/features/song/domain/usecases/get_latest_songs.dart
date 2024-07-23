import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/typealias/typealias.dart';
import 'package:tuneify/core/usecase/use_case.dart';
import 'package:tuneify/features/song/data/repositories/song_repository.dart';
import 'package:tuneify/features/song/domain/entities/song_entity.dart';
import 'package:tuneify/features/song/domain/repositories/song_repository.dart';

final getLatestSongsProvider =
    Provider((ref) => GetLatestSongsUseCase(ref.watch(songRepositoryProvider)));

final class GetLatestSongsUseCase
    implements UseCaseNoParam<ResultFuture<List<SongEntity>>> {
  final SongRepository _songRepository;

  GetLatestSongsUseCase(this._songRepository);

  @override
  ResultFuture<List<SongEntity>> call() {
    return _songRepository.getLatestSongs();
  }
}
