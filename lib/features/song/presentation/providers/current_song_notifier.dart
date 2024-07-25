import 'dart:async';

import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuneify/features/song/domain/entities/song_entity.dart';
import 'package:tuneify/features/song/domain/usecases/upload_local_songs.dart';
part 'current_song_notifier.g.dart';

@riverpod
class CurrentSongNotifier extends _$CurrentSongNotifier {
  AudioPlayer? player;
  bool isPlaying = false;
  StreamSubscription? cancellables;

  @override
  SongEntity? build() {
    ref.onDispose(() {
      cancellables?.cancel();
      player?.dispose();
    });
    return null;
  }

  void selectSong(SongEntity entity) async {
    if (entity.id == state?.id) {
      return;
    }

    await player?.stop();
    player = AudioPlayer();

    final audioSource = AudioSource.uri(
      Uri.parse(entity.songURL),
      tag: MediaItem(
        id: entity.id,
        artist: entity.artist,
        title: entity.name,
        artUri: Uri.parse(entity.thumbnailURL),
      ),
    );

    await player?.setAudioSource(audioSource);

    cancellables = player?.playerStateStream.listen((audioState) {
      if (audioState.processingState == ProcessingState.completed) {
        player?.seek(Duration.zero);
        player?.pause();
        isPlaying = false;
        state = state?.copyWith(hexCode: state?.hexCode);
      }
    });
    ref.read(uploadLocalSongsProvider)(entity);
    player?.play();
    isPlaying = true;
    state = entity;
  }

  void playPause() async {
    if (isPlaying) {
      player?.pause();
    } else {
      player?.play();
    }

    isPlaying = !isPlaying;
    state = state?.copyWith(hexCode: state?.hexCode);
  }

  void seekSongDuration(double value) async {
    player?.seek(
      Duration(
        milliseconds: (value * player!.duration!.inMilliseconds).toInt(),
      ),
    );
  }
}
