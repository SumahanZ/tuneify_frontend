import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuneify/core/failure/failure.dart';
import 'package:tuneify/features/song/domain/entities/song_entity.dart';
part 'song_state.freezed.dart';

@freezed
sealed class SongState with _$SongState {
  const factory SongState.initial() = SongInitial;
  const factory SongState.loading() = SongLoading;
  const factory SongState.failure(CommonFailure failure) = SongFailure;
  const factory SongState.uploadSuccess(SongEntity uploadedSong) =
      SongUploadSuccess;
  const factory SongState.fetchSuccess(List<SongEntity> songs) =
      SongFetchSuccess;
}
