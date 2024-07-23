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
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'artist': artist,
      'thumbnailURL': thumbnailURL,
      'audioURL': songURL,
      'hexCode': hexCode,
    };
  }

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

  String toJson() => json.encode(toMap());

  factory SongModel.fromJson(String source) =>
      SongModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}
