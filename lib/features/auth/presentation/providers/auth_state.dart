import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuneify/core/failures/failure.dart';
part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.loading() = Loading;
  const factory AuthState.failure(CommonFailure failure) = Failure;
  const factory AuthState.success(String message) = Success;
}
