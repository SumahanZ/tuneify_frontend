import 'package:tuneify/core/typealias/typealias.dart';
import 'package:tuneify/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  ResultFuture<void> signUp({
    required String name,
    required String email,
    required String password,
  });

  ResultFuture<UserEntity> login({
    required String email,
    required String password,
  });

  ResultFuture<UserEntity> getData();
}
