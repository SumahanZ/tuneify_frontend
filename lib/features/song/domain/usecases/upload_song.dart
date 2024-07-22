import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/usecase/use_case.dart';
import 'package:tuneify/features/song/data/repositories/song_repository.dart';
import 'package:tuneify/features/song/domain/entities/song_entity.dart';
import 'package:tuneify/features/song/domain/repositories/song_repository.dart';

final uploadSongProvider =
    Provider((ref) => UploadSongUseCase(ref.watch(songRepositoryProvider)));

final class UploadSongUseCase implements UseCase<SongEntity, UploadSongParams> {
  final SongRepository _songRepository;

  UploadSongUseCase(this._songRepository);

  @override
  SongEntity call(UploadSongParams params) {
    throw UnimplementedError();
  }
}

class UploadSongParams {
  final String artist;
  final String name;
  final File audio;
  final File thumbnail;

  UploadSongParams({
    required this.artist,
    required this.name,
    required this.audio,
    required this.thumbnail,
  });
}
