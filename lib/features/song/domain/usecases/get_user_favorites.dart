import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/typealias/typealias.dart';
import 'package:tuneify/core/usecase/use_case.dart';
import 'package:tuneify/features/song/data/repositories/song_repository.dart';
import 'package:tuneify/features/song/domain/entities/song_entity.dart';
import 'package:tuneify/features/song/domain/repositories/song_repository.dart';

final getUserFavoritesProvider = Provider(
  (ref) => GetUsersFavoriteUseCase(ref.watch(songRepositoryProvider)),
);

final class GetUsersFavoriteUseCase
    implements UseCaseNoParam<ResultFuture<List<SongEntity>>> {
  final SongRepository _songRepository;

  GetUsersFavoriteUseCase(this._songRepository);

  @override
  ResultFuture<List<SongEntity>> call() async {
    return _songRepository.getSongFavorites();
  }
}
