import "dart:convert";
import 'package:flutter_riverpod/flutter_riverpod.dart';
import "package:http/http.dart" as http;
import "package:tuneify/core/constants/api_constants.dart";
import "package:tuneify/core/exceptions/exception.dart";
import "package:tuneify/core/providers/http_provider.dart";

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
          message: response.body,
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
          message: response.body,
          statusCode: response.statusCode,
        );
      }

      final decodedResponse = jsonDecode(response.body);
      print(decodedResponse);

      return decodedResponse;
    } on ServerException {
      rethrow;
    } catch (err) {
      throw UnknownException(message: err.toString(), statusCode: 500);
    }
  }
}
