import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuneify/core/enums/get_data_enum.dart';
import 'package:tuneify/core/failure/failure.dart';
part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.loading() = Loading;
  const factory AuthState.failure(CommonFailure failure) = Failure;
  const factory AuthState.createUserSuccess(String message) = CreateUserSuccess;
  const factory AuthState.loginUserSuccess() = LoginUserSuccess;
  const factory AuthState.getDataSuccess(GetData getData) = GetDataSuccess;
}
