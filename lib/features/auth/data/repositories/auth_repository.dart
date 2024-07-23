import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tuneify/core/exception/exception.dart';
import 'package:tuneify/core/failure/failure.dart';
import 'package:tuneify/core/providers/shared_preference_provider.dart';
import 'package:tuneify/core/typealias/typealias.dart';
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
  final SharedPrefService _sharedPref;

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

  @override
  ResultFuture<void> getData() async {
    try {
      final tokens = await _sharedPref.read("tokens");
      await _authRemoteDataSource.getData(tokens, _sharedPref);
      return const Right(null);
    } on SharedPreferenceException catch (err) {
      return Left(SharedPreferenceFailure.fromException(err));
    } on ServerException catch (err) {
      return Left(ServerFailure.fromException(err));
    } on UnknownException catch (err) {
      return Left(UnknownFailure.fromException(err));
    }
  }
}
