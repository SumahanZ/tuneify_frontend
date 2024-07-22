import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuneify/features/song/domain/usecases/upload_song.dart';
import 'package:tuneify/features/song/presentation/providers/song_state.dart';
part 'song_notifier.g.dart';

final songUseCaseProvider = Provider(
  (ref) => SongUseCases(
    uploadSong: ref.watch(uploadSongProvider),
  ),
);

@riverpod
class SongNotifier extends _$SongNotifier {
  @override
  SongState build() {
    return const SongState.initial();
  }
}

class SongUseCases {
  final UploadSongUseCase uploadSong;

  SongUseCases({
    required this.uploadSong,
  });
}
