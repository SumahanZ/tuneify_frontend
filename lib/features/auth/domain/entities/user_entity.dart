import 'package:equatable/equatable.dart';

import 'package:tuneify/features/song/domain/entities/fav_song_entity.dart';

class UserEntity extends Equatable {
  final String id;
  final String email;
  final String name;
  final List<FavoriteEntity> favoriteSongs;

  const UserEntity({
    required this.id,
    required this.email,
    required this.name,
    required this.favoriteSongs,
  });

  UserEntity copyWith({
    String? id,
    String? email,
    String? name,
    List<FavoriteEntity>? favoriteSongs,
  }) {
    return UserEntity(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      favoriteSongs: favoriteSongs ?? this.favoriteSongs,
    );
  }

  @override
  List<Object> get props => [id, email, name, favoriteSongs];
}
