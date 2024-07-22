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

  SongModel copyWith({
    String? id,
    String? name,
    String? artist,
    String? thumbnailURL,
    String? songURL,
    String? hexCode,
  }) {
    return SongModel(
      id: id ?? this.id,
      name: name ?? this.name,
      artist: artist ?? this.artist,
      thumbnailURL: thumbnailURL ?? this.thumbnailURL,
      songURL: songURL ?? this.songURL,
      hexCode: hexCode ?? this.hexCode,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'artist': artist,
      'thumbnailURL': thumbnailURL,
      'songURL': songURL,
      'hexCode': hexCode,
    };
  }

  factory SongModel.fromMap(Map<String, dynamic> map) {
    return SongModel(
      id: map['id'] as String,
      name: map['name'] as String,
      artist: map['artist'] as String,
      thumbnailURL: map['thumbnailURL'] as String,
      songURL: map['songURL'] as String,
      hexCode: map['hexCode'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SongModel.fromJson(String source) =>
      SongModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}
