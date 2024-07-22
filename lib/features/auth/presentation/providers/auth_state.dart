import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuneify/core/enums/get_data_enum.dart';
import 'package:tuneify/core/failure/failure.dart';
part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.failure(CommonFailure failure) = AuthFailure;
  const factory AuthState.createUserSuccess(String message) =
      AuthCreateUserSuccess;
  const factory AuthState.loginUserSuccess() = AuthLoginUserSuccess;
  const factory AuthState.getDataSuccess(GetData getData) = AuthGetDataSuccess;
}
