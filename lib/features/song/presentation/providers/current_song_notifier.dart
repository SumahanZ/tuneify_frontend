import 'dart:async';

import 'package:just_audio/just_audio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuneify/features/song/domain/entities/song_entity.dart';
part 'current_song_notifier.g.dart';

final currentSongPositionProvider = StreamProvider.autoDispose<Duration?>(
  (ref) {
    return ref
        .read(currentSongNotifierProvider.notifier)
        .player!
        .positionStream;
  },
);

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

    final audioSource = AudioSource.uri(Uri.parse(entity.songURL));

    await player?.setAudioSource(audioSource);

    cancellables = player?.playerStateStream.listen((audioState) {
      if (audioState.processingState == ProcessingState.completed) {
        player?.seek(Duration.zero);
        player?.pause();
        isPlaying = false;
        state = state?.copyWith(hexCode: state?.hexCode);
      }
    });

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
