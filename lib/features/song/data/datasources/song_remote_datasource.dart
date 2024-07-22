import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:tuneify/core/providers/http_provider.dart';
import 'package:tuneify/features/song/data/models/song_model.dart';

final songRemoteDataSourceProvider =
    Provider((ref) => SongRemoteDataSourceImpl(ref.watch(httpClientProvider)));

abstract class SongRemoteDataSource {
  Future<SongModel> uploadSong();
}

class SongRemoteDataSourceImpl implements SongRemoteDataSource {
  final http.Client _client;

  SongRemoteDataSourceImpl(this._client);

  @override
  Future<SongModel> uploadSong() {
    throw UnimplementedError();
  }
}
