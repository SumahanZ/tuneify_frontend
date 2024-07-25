import 'package:equatable/equatable.dart';

class FavoriteEntity extends Equatable {
  final String user;
  final String song;

  const FavoriteEntity({
    required this.user,
    required this.song,
  });

  @override
  List<Object> get props => [user, song];
}
