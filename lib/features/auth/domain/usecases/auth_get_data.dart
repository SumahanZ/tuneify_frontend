import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/typealias/typealias.dart';
import 'package:tuneify/core/usecase/use_case.dart';
import 'package:tuneify/features/auth/data/repositories/auth_repository.dart';
import 'package:tuneify/features/auth/domain/entities/user_entity.dart';
import 'package:tuneify/features/auth/domain/repositories/auth_repository.dart';

final authGetDataProvider =
    Provider((ref) => AuthGetDataUseCase(ref.watch(authRepositoryProvider)));

class AuthGetDataUseCase extends UseCaseNoParam<ResultFuture<void>> {
  final AuthRepository _authRepository;

  AuthGetDataUseCase(this._authRepository);

  @override
  ResultFuture<UserEntity> call() {
    return _authRepository.getData();
  }
}
