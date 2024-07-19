import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tuneify/core/exceptions/exception.dart';
import 'package:tuneify/core/failures/failure.dart';
import 'package:tuneify/core/providers/shared_preference_provider.dart';
import 'package:tuneify/core/typaliases/typealias.dart';
import 'package:tuneify/core/utils/logger.dart';
import 'package:tuneify/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:tuneify/features/auth/domain/repositories/auth_repository.dart';

final authRepositoryProvider = Provider(
  (ref) {
    final authRemoteDataSource = ref.watch(authRemoteDataSourceProvider);
    final sharedPref = ref.watch(sharedPrefProvider);
    return AuthRepositoryImpl(
      authRemoteDataSource,
      sharedPref,
    );
  },
);

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  final SharedPref _sharedPref;

  AuthRepositoryImpl(
    this._authRemoteDataSource,
    this._sharedPref,
  );

  @override
  ResultFuture<void> login({
    required String email,
    required String password,
  }) async {
    try {
      final response =
          await _authRemoteDataSource.login(email: email, password: password);

      _sharedPref.save("tokens", {
        "accessToken": response["refreshToken"],
        "refreshToken": response["accessToken"],
      });

      print("Entered here");

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
    } on ServerException catch (err, stackTrace) {
      MyErrorLogger.sendLog(
        error: err,
        text: err.message,
        stackTrace: stackTrace,
      );
      return Left(ServerFailure.fromException(err));
    } on UnknownException catch (err, stackTrace) {
      MyErrorLogger.sendLog(
        error: err,
        text: err.message,
        stackTrace: stackTrace,
      );
      return Left(UnknownFailure.fromException(err));
    }
  }
}
