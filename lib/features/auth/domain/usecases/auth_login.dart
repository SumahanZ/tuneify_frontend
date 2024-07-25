import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/typealias/typealias.dart';
import 'package:tuneify/core/usecase/use_case.dart';
import 'package:tuneify/features/auth/data/repositories/auth_repository.dart';
import 'package:tuneify/features/auth/domain/entities/user_entity.dart';
import 'package:tuneify/features/auth/domain/repositories/auth_repository.dart';

final authLoginProvider =
    Provider((ref) => AuthLoginUseCase(ref.watch(authRepositoryProvider)));

class AuthLoginUseCase extends UseCase<ResultFuture<void>, AuthLoginParams> {
  final AuthRepository _authRepository;

  AuthLoginUseCase(this._authRepository);

  @override
  ResultFuture<UserEntity> call(AuthLoginParams params) {
    return _authRepository.login(
      email: params.email,
      password: params.password,
    );
  }
}

class AuthLoginParams {
  final String email;
  final String password;

  AuthLoginParams({required this.email, required this.password});
}
