// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommonFailure failure) failure,
    required TResult Function(String message) createUserSuccess,
    required TResult Function() loginUserSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommonFailure failure)? failure,
    TResult? Function(String message)? createUserSuccess,
    TResult? Function()? loginUserSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommonFailure failure)? failure,
    TResult Function(String message)? createUserSuccess,
    TResult Function()? loginUserSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(CreateUserSuccess value) createUserSuccess,
    required TResult Function(LoginUserSuccess value) loginUserSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(CreateUserSuccess value)? createUserSuccess,
    TResult? Function(LoginUserSuccess value)? loginUserSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(CreateUserSuccess value)? createUserSuccess,
    TResult Function(LoginUserSuccess value)? loginUserSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommonFailure failure) failure,
    required TResult Function(String message) createUserSuccess,
    required TResult Function() loginUserSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommonFailure failure)? failure,
    TResult? Function(String message)? createUserSuccess,
    TResult? Function()? loginUserSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommonFailure failure)? failure,
    TResult Function(String message)? createUserSuccess,
    TResult Function()? loginUserSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(CreateUserSuccess value) createUserSuccess,
    required TResult Function(LoginUserSuccess value) loginUserSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(CreateUserSuccess value)? createUserSuccess,
    TResult? Function(LoginUserSuccess value)? loginUserSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(CreateUserSuccess value)? createUserSuccess,
    TResult Function(LoginUserSuccess value)? loginUserSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommonFailure failure) failure,
    required TResult Function(String message) createUserSuccess,
    required TResult Function() loginUserSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommonFailure failure)? failure,
    TResult? Function(String message)? createUserSuccess,
    TResult? Function()? loginUserSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommonFailure failure)? failure,
    TResult Function(String message)? createUserSuccess,
    TResult Function()? loginUserSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(CreateUserSuccess value) createUserSuccess,
    required TResult Function(LoginUserSuccess value) loginUserSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(CreateUserSuccess value)? createUserSuccess,
    TResult? Function(LoginUserSuccess value)? loginUserSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(CreateUserSuccess value)? createUserSuccess,
    TResult Function(LoginUserSuccess value)? loginUserSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AuthState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CommonFailure failure});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CommonFailure,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl(this.failure);

  @override
  final CommonFailure failure;

  @override
  String toString() {
    return 'AuthState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommonFailure failure) failure,
    required TResult Function(String message) createUserSuccess,
    required TResult Function() loginUserSuccess,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommonFailure failure)? failure,
    TResult? Function(String message)? createUserSuccess,
    TResult? Function()? loginUserSuccess,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommonFailure failure)? failure,
    TResult Function(String message)? createUserSuccess,
    TResult Function()? loginUserSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(CreateUserSuccess value) createUserSuccess,
    required TResult Function(LoginUserSuccess value) loginUserSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(CreateUserSuccess value)? createUserSuccess,
    TResult? Function(LoginUserSuccess value)? loginUserSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(CreateUserSuccess value)? createUserSuccess,
    TResult Function(LoginUserSuccess value)? loginUserSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements AuthState {
  const factory Failure(final CommonFailure failure) = _$FailureImpl;

  CommonFailure get failure;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserSuccessImplCopyWith<$Res> {
  factory _$$CreateUserSuccessImplCopyWith(_$CreateUserSuccessImpl value,
          $Res Function(_$CreateUserSuccessImpl) then) =
      __$$CreateUserSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CreateUserSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$CreateUserSuccessImpl>
    implements _$$CreateUserSuccessImplCopyWith<$Res> {
  __$$CreateUserSuccessImplCopyWithImpl(_$CreateUserSuccessImpl _value,
      $Res Function(_$CreateUserSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CreateUserSuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateUserSuccessImpl implements CreateUserSuccess {
  const _$CreateUserSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.createUserSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserSuccessImplCopyWith<_$CreateUserSuccessImpl> get copyWith =>
      __$$CreateUserSuccessImplCopyWithImpl<_$CreateUserSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommonFailure failure) failure,
    required TResult Function(String message) createUserSuccess,
    required TResult Function() loginUserSuccess,
  }) {
    return createUserSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommonFailure failure)? failure,
    TResult? Function(String message)? createUserSuccess,
    TResult? Function()? loginUserSuccess,
  }) {
    return createUserSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommonFailure failure)? failure,
    TResult Function(String message)? createUserSuccess,
    TResult Function()? loginUserSuccess,
    required TResult orElse(),
  }) {
    if (createUserSuccess != null) {
      return createUserSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(CreateUserSuccess value) createUserSuccess,
    required TResult Function(LoginUserSuccess value) loginUserSuccess,
  }) {
    return createUserSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(CreateUserSuccess value)? createUserSuccess,
    TResult? Function(LoginUserSuccess value)? loginUserSuccess,
  }) {
    return createUserSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(CreateUserSuccess value)? createUserSuccess,
    TResult Function(LoginUserSuccess value)? loginUserSuccess,
    required TResult orElse(),
  }) {
    if (createUserSuccess != null) {
      return createUserSuccess(this);
    }
    return orElse();
  }
}

abstract class CreateUserSuccess implements AuthState {
  const factory CreateUserSuccess(final String message) =
      _$CreateUserSuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$CreateUserSuccessImplCopyWith<_$CreateUserSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginUserSuccessImplCopyWith<$Res> {
  factory _$$LoginUserSuccessImplCopyWith(_$LoginUserSuccessImpl value,
          $Res Function(_$LoginUserSuccessImpl) then) =
      __$$LoginUserSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginUserSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginUserSuccessImpl>
    implements _$$LoginUserSuccessImplCopyWith<$Res> {
  __$$LoginUserSuccessImplCopyWithImpl(_$LoginUserSuccessImpl _value,
      $Res Function(_$LoginUserSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginUserSuccessImpl implements LoginUserSuccess {
  const _$LoginUserSuccessImpl();

  @override
  String toString() {
    return 'AuthState.loginUserSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginUserSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommonFailure failure) failure,
    required TResult Function(String message) createUserSuccess,
    required TResult Function() loginUserSuccess,
  }) {
    return loginUserSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommonFailure failure)? failure,
    TResult? Function(String message)? createUserSuccess,
    TResult? Function()? loginUserSuccess,
  }) {
    return loginUserSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommonFailure failure)? failure,
    TResult Function(String message)? createUserSuccess,
    TResult Function()? loginUserSuccess,
    required TResult orElse(),
  }) {
    if (loginUserSuccess != null) {
      return loginUserSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(CreateUserSuccess value) createUserSuccess,
    required TResult Function(LoginUserSuccess value) loginUserSuccess,
  }) {
    return loginUserSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failure value)? failure,
    TResult? Function(CreateUserSuccess value)? createUserSuccess,
    TResult? Function(LoginUserSuccess value)? loginUserSuccess,
  }) {
    return loginUserSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(CreateUserSuccess value)? createUserSuccess,
    TResult Function(LoginUserSuccess value)? loginUserSuccess,
    required TResult orElse(),
  }) {
    if (loginUserSuccess != null) {
      return loginUserSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginUserSuccess implements AuthState {
  const factory LoginUserSuccess() = _$LoginUserSuccessImpl;
}
