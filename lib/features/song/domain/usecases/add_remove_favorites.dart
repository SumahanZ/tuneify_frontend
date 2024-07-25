import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/typealias/typealias.dart';
import 'package:tuneify/core/usecase/use_case.dart';
import 'package:tuneify/features/song/data/repositories/song_repository.dart';
import 'package:tuneify/features/song/domain/repositories/song_repository.dart';

final addRemoveFavoriteProvider = Provider(
  (ref) => AddRemoveFavoriteUseCase(ref.watch(songRepositoryProvider)),
);

final class AddRemoveFavoriteUseCase
    implements UseCase<ResultFuture<void>, String> {
  final SongRepository _songRepository;

  AddRemoveFavoriteUseCase(this._songRepository);

  @override
  ResultFuture<String> call(String songId) async {
    return _songRepository.addRemoveFavorite(songId);
  }
}
