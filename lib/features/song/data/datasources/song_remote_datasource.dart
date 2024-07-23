import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:tuneify/core/constants/api_constants.dart';
import 'package:tuneify/core/exception/exception.dart';
import 'package:tuneify/core/providers/http_provider.dart';
import 'package:tuneify/core/providers/shared_preference_provider.dart';
import 'package:tuneify/core/utils/utils.dart';
import 'package:tuneify/features/song/data/models/song_model.dart';

final songRemoteDataSourceProvider = Provider(
  (ref) => SongRemoteDataSourceImpl(
    ref.watch(httpClientProvider),
    ref.watch(sharedPrefProvider),
  ),
);

abstract class SongRemoteDataSource {
  Future<SongModel> uploadSong({
    required Map<String, dynamic> tokens,
    required String audioFilePath,
    required String thumbnailFilePath,
    required String artist,
    required String name,
    required String hexCode,
  });

  Future<List<SongModel>> getLatestSongs(
    Map<String, dynamic> tokens,
  );
}

class SongRemoteDataSourceImpl implements SongRemoteDataSource {
  final http.Client _client;
  final SharedPrefService _sharedPref;

  SongRemoteDataSourceImpl(this._client, this._sharedPref);

  @override
  Future<SongModel> uploadSong({
    required Map<String, dynamic> tokens,
    required String audioFilePath,
    required String thumbnailFilePath,
    required String artist,
    required String name,
    required String hexCode,
  }) async {
    try {
      final request = http.MultipartRequest(
        "POST",
        Uri.parse("${APIConstants.baseURL}${APIConstants.uploadSongEndpoint}"),
      )
        ..headers.addAll({
          "Authorization": "Bearer ${tokens["accessToken"]}",
          "x-refresh": tokens["refreshToken"],
        })
        ..files.addAll([
          await http.MultipartFile.fromPath("audio", audioFilePath),
          await http.MultipartFile.fromPath("thumbnail", thumbnailFilePath),
        ])
        ..fields.addAll({
          "artist": artist,
          "name": name,
          "hexCode": hexCode,
        });

      final streamedResponse = await _client.send(request);

      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode != 200 && response.statusCode != 201) {
        throw ServerException(
          message: (jsonDecode(response.body) as Map<String, dynamic>)["msg"],
          statusCode: response.statusCode,
        );
      }

      handleRefreshAccessToken(response, _sharedPref);

      return SongModel.fromJson(jsonDecode(response.body));
    } on ServerException {
      rethrow;
    } catch (err) {
      throw UnknownException(message: err.toString());
    }
  }

  @override
  Future<List<SongModel>> getLatestSongs(
    Map<String, dynamic> tokens,
  ) async {
    try {
      final response = await _client.get(
        Uri.parse(
          "${APIConstants.baseURL}${APIConstants.getLatestSongsEndpoint}",
        ),
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

      handleRefreshAccessToken(response, _sharedPref);

      final songs = (jsonDecode(response.body) as List)
          .map((value) => SongModel.fromMap(value))
          .toList();

      return songs;
    } on ServerException {
      rethrow;
    } catch (err) {
      throw UnknownException(message: err.toString(), statusCode: 500);
    }
  }
}
