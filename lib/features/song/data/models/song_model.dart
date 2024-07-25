import 'dart:convert';

import 'package:tuneify/features/song/domain/entities/song_entity.dart';

class SongModel extends SongEntity {
  const SongModel({
    required super.id,
    required super.name,
    required super.artist,
    required super.thumbnailURL,
    required super.songURL,
    required super.hexCode,
  });

  factory SongModel.fromMap(Map<String, dynamic> map) {
    return SongModel(
      id: map['_id'] ?? "",
      name: map['name'] ?? "",
      artist: map['artist'] ?? "",
      thumbnailURL: map['thumbnailURL'] ?? "",
      songURL: map['audioURL'] ?? "",
      hexCode: map['hexCode'] ?? "",
    );
  }

  factory SongModel.fromMapFavorite(Map<String, dynamic> map) {
    return SongModel(
      id: map["song"]['_id'] ?? "",
      name: map["song"]['name'] ?? "",
      artist: map["song"]['artist'] ?? "",
      thumbnailURL: map["song"]['thumbnailURL'] ?? "",
      songURL: map["song"]['audioURL'] ?? "",
      hexCode: map["song"]['hexCode'] ?? "",
    );
  }

  factory SongModel.fromJson(String source) =>
      SongModel.fromMap(json.decode(source) as Map<String, dynamic>);

  factory SongModel.fromJsonFavorite(String source) =>
      SongModel.fromMapFavorite(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}
