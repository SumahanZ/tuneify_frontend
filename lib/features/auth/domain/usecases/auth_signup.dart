import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/typealias/typealias.dart';
import 'package:tuneify/core/usecase/use_case.dart';
import 'package:tuneify/features/auth/data/repositories/auth_repository.dart';
import 'package:tuneify/features/auth/domain/repositories/auth_repository.dart';

final authSignUpProvider =
    Provider((ref) => AuthSignUpUseCase(ref.watch(authRepositoryProvider)));

class AuthSignUpUseCase extends UseCase<ResultFuture<void>, AuthSignUpParams> {
  final AuthRepository _authRepository;

  AuthSignUpUseCase(this._authRepository);

  @override
  ResultFuture<void> call(AuthSignUpParams params) {
    return _authRepository.signUp(
      name: params.name,
      email: params.email,
      password: params.password,
    );
  }
}

class AuthSignUpParams {
  final String name;
  final String email;
  final String password;

  AuthSignUpParams({
    required this.name,
    required this.email,
    required this.password,
  });
}
