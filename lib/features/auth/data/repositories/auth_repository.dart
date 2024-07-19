import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tuneify/core/exceptions/exception.dart';
import 'package:tuneify/core/exceptions/failure.dart';
import 'package:tuneify/core/typaliases/typealias.dart';
import 'package:tuneify/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:tuneify/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:tuneify/features/auth/domain/repositories/auth_repository.dart';

final authRepositoryProvider = Provider(
  (ref) {
    final authRemoteDataSource = ref.watch(authRemoteDataSourceProvider);
    final authLocalDataSource = ref.watch(authLocalDataSourceProvider);
    return AuthRepositoryImpl(authRemoteDataSource, authLocalDataSource);
  },
);

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;

  AuthRepositoryImpl(this._authRemoteDataSource, this._authLocalDataSource);

  @override
  ResultFuture<void> login({
    required String email,
    required String password,
  }) async {
    try {
      await _authRemoteDataSource.login(email: email, password: password);
      return const Right(null);
    } on ServerException catch (err) {
      return Left(ServerFailure.fromException(err));
    } on UnknownException catch (err) {
      return Left(UnknownFailure.fromException(err));
    }
  }

  @override
  ResultFuture<void> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      await _authRemoteDataSource.signUp(
        name: name,
        email: email,
        password: password,
      );
      return const Right(null);
    } on ServerException catch (err) {
      return Left(ServerFailure.fromException(err));
    } on UnknownException catch (err) {
      return Left(UnknownFailure.fromException(err));
    }
  }
}
