import 'package:equatable/equatable.dart';

class SongEntity extends Equatable {
  final String id;
  final String name;
  final String artist;
  final String thumbnailURL;
  final String songURL;
  final String hexCode;

  const SongEntity({
    required this.id,
    required this.name,
    required this.artist,
    required this.thumbnailURL,
    required this.songURL,
    required this.hexCode,
  });

  @override
  List<Object> get props {
    return [
      id,
      name,
      artist,
      thumbnailURL,
      songURL,
      hexCode,
    ];
  }
}
