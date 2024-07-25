import 'dart:convert';

import 'package:tuneify/features/song/domain/entities/fav_song_entity.dart';

class FavoriteModel extends FavoriteEntity {
  const FavoriteModel({required super.user, required super.song});

  FavoriteModel copyWith({
    String? user,
    String? song,
  }) {
    return FavoriteModel(
      user: user ?? this.user,
      song: song ?? this.song,
    );
  }

  factory FavoriteModel.fromMap(Map<String, dynamic> map) {
    return FavoriteModel(
      user: map['user'] ?? "",
      song: map['song']["_id"] ?? "",
    );
  }

  factory FavoriteModel.fromJson(String source) =>
      FavoriteModel.fromMap(json.decode(source));

  @override
  bool get stringify => true;
}
