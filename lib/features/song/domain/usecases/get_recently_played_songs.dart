import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/typealias/typealias.dart';
import 'package:tuneify/core/usecase/use_case.dart';
import 'package:tuneify/features/song/data/repositories/song_repository.dart';
import 'package:tuneify/features/song/domain/entities/song_entity.dart';
import 'package:tuneify/features/song/domain/repositories/song_repository.dart';

final getRecentlyPlayedSongsProvider = Provider(
  (ref) => GetRecentlyPlayedSongsUseCase(ref.watch(songRepositoryProvider)),
);

final class GetRecentlyPlayedSongsUseCase
    implements UseCaseNoParam<Result<List<SongEntity>>> {
  final SongRepository _songRepository;

  GetRecentlyPlayedSongsUseCase(this._songRepository);

  @override
  Result<List<SongEntity>> call() {
    return _songRepository.getRecentlyPlayedSongs();
  }
}
