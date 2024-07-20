import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/typaliases/typealias.dart';
import 'package:tuneify/core/usecase/use_case.dart';
import 'package:tuneify/features/auth/data/repositories/auth_repository.dart';
import 'package:tuneify/features/auth/domain/repositories/auth_repository.dart';

final authGetDataProvider =
    Provider((ref) => AuthGetDataUseCase(ref.watch(authRepositoryProvider)));

class AuthGetDataUseCase extends UseCaseNoParam<ResultFuture<void>> {
  final AuthRepository _authRepository;

  AuthGetDataUseCase(this._authRepository);

  @override
  ResultFuture<void> call() {
    return _authRepository.getData();
  }
}
