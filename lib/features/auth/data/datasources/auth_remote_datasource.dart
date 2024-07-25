import "dart:convert";
import 'package:flutter_riverpod/flutter_riverpod.dart';
import "package:http/http.dart" as http;
import "package:tuneify/core/constants/api_constants.dart";
import "package:tuneify/core/exception/exception.dart";
import "package:tuneify/core/providers/http_provider.dart";
import "package:tuneify/core/providers/shared_preference_provider.dart";
import "package:tuneify/core/utils/utils.dart";
import "package:tuneify/features/auth/data/models/user_model.dart";

final authRemoteDataSourceProvider =
    Provider((ref) => AuthRemoteDataSourceImpl(ref.watch(httpClientProvider)));

abstract class AuthRemoteDataSource {
  Future<void> signUp({
    required String name,
    required String email,
    required String password,
  });

  Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  });

  Future<UserModel> getData(
    Map<String, dynamic> tokens,
    SharedPrefService pref,
  );
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final http.Client _client;

  AuthRemoteDataSourceImpl(this._client);

  @override
  Future<void> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await _client.post(
        Uri.parse("${APIConstants.baseURL}${APIConstants.signupEndpoint}"),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "name": name,
          "email": email,
          "password": password,
        }),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        throw ServerException(
          message: (jsonDecode(response.body) as Map<String, dynamic>)["msg"],
          statusCode: response.statusCode,
        );
      }
    } on ServerException {
      rethrow;
    } catch (err) {
      throw UnknownException(message: err.toString(), statusCode: 500);
    }
  }

  @override
  Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _client.post(
        Uri.parse("${APIConstants.baseURL}${APIConstants.loginEndpoint}"),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "email": email,
          "password": password,
        }),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        throw ServerException(
          message: (jsonDecode(response.body) as Map<String, dynamic>)["msg"],
          statusCode: response.statusCode,
        );
      }

      final mappedResponse = jsonDecode(response.body);

      mappedResponse["user"] = UserModel.fromJson(response.body);

      return mappedResponse;
    } on ServerException {
      rethrow;
    } catch (err) {
      throw UnknownException(message: err.toString(), statusCode: 500);
    }
  }

  @override
  Future<UserModel> getData(
    Map<String, dynamic> tokens,
    SharedPrefService pref,
  ) async {
    try {
      final response = await _client.get(
        Uri.parse("${APIConstants.baseURL}${APIConstants.getDataEndpoint}"),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${tokens["accessToken"]}",
          "x-refresh": tokens["refreshToken"],
        },
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        throw ServerException(
          message: (jsonDecode(response.body) as Map<String, dynamic>)["msg"],
          statusCode: response.statusCode,
        );
      }

      handleRefreshAccessToken(response, pref);

      return UserModel.fromJson(response.body);
    } on ServerException {
      rethrow;
    } catch (err) {
      throw UnknownException(message: err.toString(), statusCode: 500);
    }
  }
}
