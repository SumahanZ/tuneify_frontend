import 'dart:convert';

import 'package:tuneify/features/auth/domain/entities/user_entity.dart';
import 'package:tuneify/features/song/data/models/fav_song_model.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.id,
    required super.email,
    required super.name,
    required super.favoriteSongs,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map["user"]['_id'] ?? "",
      email: map["user"]['email'] ?? "",
      name: map["user"]['name'] ?? "",
      favoriteSongs: List<FavoriteModel>.from(
        (map['favorites'] as List<dynamic>).map<FavoriteModel>(
          (x) => FavoriteModel.fromMap(x),
        ),
      ),
    );
  }

  factory UserModel.fromJson(String source) {
    return UserModel.fromMap(json.decode(source));
  }

  @override
  bool get stringify => true;
}
