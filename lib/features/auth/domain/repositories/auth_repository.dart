import 'package:tuneify/core/typealias/typealias.dart';

abstract class AuthRepository {
  ResultFuture<void> signUp({
    required String name,
    required String email,
    required String password,
  });

  ResultFuture<void> login({
    required String email,
    required String password,
  });

  ResultFuture<void> getData();
}
