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
    required TResult Function(GetData getData) getDataSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommonFailure failure)? failure,
    TResult? Function(String message)? createUserSuccess,
    TResult? Function()? loginUserSuccess,
    TResult? Function(GetData getData)? getDataSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommonFailure failure)? failure,
    TResult Function(String message)? createUserSuccess,
    TResult Function()? loginUserSuccess,
    TResult Function(GetData getData)? getDataSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthFailure value) failure,
    required TResult Function(AuthCreateUserSuccess value) createUserSuccess,
    required TResult Function(AuthLoginUserSuccess value) loginUserSuccess,
    required TResult Function(AuthGetDataSuccess value) getDataSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthFailure value)? failure,
    TResult? Function(AuthCreateUserSuccess value)? createUserSuccess,
    TResult? Function(AuthLoginUserSuccess value)? loginUserSuccess,
    TResult? Function(AuthGetDataSuccess value)? getDataSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthCreateUserSuccess value)? createUserSuccess,
    TResult Function(AuthLoginUserSuccess value)? loginUserSuccess,
    TResult Function(AuthGetDataSuccess value)? getDataSuccess,
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
abstract class _$$AuthInitialImplCopyWith<$Res> {
  factory _$$AuthInitialImplCopyWith(
          _$AuthInitialImpl value, $Res Function(_$AuthInitialImpl) then) =
      __$$AuthInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInitialImpl>
    implements _$$AuthInitialImplCopyWith<$Res> {
  __$$AuthInitialImplCopyWithImpl(
      _$AuthInitialImpl _value, $Res Function(_$AuthInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthInitialImpl implements AuthInitial {
  const _$AuthInitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitialImpl);
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
    required TResult Function(GetData getData) getDataSuccess,
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
    TResult? Function(GetData getData)? getDataSuccess,
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
    TResult Function(GetData getData)? getDataSuccess,
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
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthFailure value) failure,
    required TResult Function(AuthCreateUserSuccess value) createUserSuccess,
    required TResult Function(AuthLoginUserSuccess value) loginUserSuccess,
    required TResult Function(AuthGetDataSuccess value) getDataSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthFailure value)? failure,
    TResult? Function(AuthCreateUserSuccess value)? createUserSuccess,
    TResult? Function(AuthLoginUserSuccess value)? loginUserSuccess,
    TResult? Function(AuthGetDataSuccess value)? getDataSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthCreateUserSuccess value)? createUserSuccess,
    TResult Function(AuthLoginUserSuccess value)? loginUserSuccess,
    TResult Function(AuthGetDataSuccess value)? getDataSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitial implements AuthState {
  const factory AuthInitial() = _$AuthInitialImpl;
}

/// @nodoc
abstract class _$$AuthLoadingImplCopyWith<$Res> {
  factory _$$AuthLoadingImplCopyWith(
          _$AuthLoadingImpl value, $Res Function(_$AuthLoadingImpl) then) =
      __$$AuthLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLoadingImpl>
    implements _$$AuthLoadingImplCopyWith<$Res> {
  __$$AuthLoadingImplCopyWithImpl(
      _$AuthLoadingImpl _value, $Res Function(_$AuthLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoadingImpl implements AuthLoading {
  const _$AuthLoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoadingImpl);
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
    required TResult Function(GetData getData) getDataSuccess,
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
    TResult? Function(GetData getData)? getDataSuccess,
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
    TResult Function(GetData getData)? getDataSuccess,
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
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthFailure value) failure,
    required TResult Function(AuthCreateUserSuccess value) createUserSuccess,
    required TResult Function(AuthLoginUserSuccess value) loginUserSuccess,
    required TResult Function(AuthGetDataSuccess value) getDataSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthFailure value)? failure,
    TResult? Function(AuthCreateUserSuccess value)? createUserSuccess,
    TResult? Function(AuthLoginUserSuccess value)? loginUserSuccess,
    TResult? Function(AuthGetDataSuccess value)? getDataSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthCreateUserSuccess value)? createUserSuccess,
    TResult Function(AuthLoginUserSuccess value)? loginUserSuccess,
    TResult Function(AuthGetDataSuccess value)? getDataSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoading implements AuthState {
  const factory AuthLoading() = _$AuthLoadingImpl;
}

/// @nodoc
abstract class _$$AuthFailureImplCopyWith<$Res> {
  factory _$$AuthFailureImplCopyWith(
          _$AuthFailureImpl value, $Res Function(_$AuthFailureImpl) then) =
      __$$AuthFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CommonFailure failure});
}

/// @nodoc
class __$$AuthFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthFailureImpl>
    implements _$$AuthFailureImplCopyWith<$Res> {
  __$$AuthFailureImplCopyWithImpl(
      _$AuthFailureImpl _value, $Res Function(_$AuthFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$AuthFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CommonFailure,
    ));
  }
}

/// @nodoc

class _$AuthFailureImpl implements AuthFailure {
  const _$AuthFailureImpl(this.failure);

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
            other is _$AuthFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      __$$AuthFailureImplCopyWithImpl<_$AuthFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommonFailure failure) failure,
    required TResult Function(String message) createUserSuccess,
    required TResult Function() loginUserSuccess,
    required TResult Function(GetData getData) getDataSuccess,
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
    TResult? Function(GetData getData)? getDataSuccess,
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
    TResult Function(GetData getData)? getDataSuccess,
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
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthFailure value) failure,
    required TResult Function(AuthCreateUserSuccess value) createUserSuccess,
    required TResult Function(AuthLoginUserSuccess value) loginUserSuccess,
    required TResult Function(AuthGetDataSuccess value) getDataSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthFailure value)? failure,
    TResult? Function(AuthCreateUserSuccess value)? createUserSuccess,
    TResult? Function(AuthLoginUserSuccess value)? loginUserSuccess,
    TResult? Function(AuthGetDataSuccess value)? getDataSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthCreateUserSuccess value)? createUserSuccess,
    TResult Function(AuthLoginUserSuccess value)? loginUserSuccess,
    TResult Function(AuthGetDataSuccess value)? getDataSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AuthFailure implements AuthState {
  const factory AuthFailure(final CommonFailure failure) = _$AuthFailureImpl;

  CommonFailure get failure;
  @JsonKey(ignore: true)
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthCreateUserSuccessImplCopyWith<$Res> {
  factory _$$AuthCreateUserSuccessImplCopyWith(
          _$AuthCreateUserSuccessImpl value,
          $Res Function(_$AuthCreateUserSuccessImpl) then) =
      __$$AuthCreateUserSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthCreateUserSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthCreateUserSuccessImpl>
    implements _$$AuthCreateUserSuccessImplCopyWith<$Res> {
  __$$AuthCreateUserSuccessImplCopyWithImpl(_$AuthCreateUserSuccessImpl _value,
      $Res Function(_$AuthCreateUserSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthCreateUserSuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthCreateUserSuccessImpl implements AuthCreateUserSuccess {
  const _$AuthCreateUserSuccessImpl(this.message);

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
            other is _$AuthCreateUserSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthCreateUserSuccessImplCopyWith<_$AuthCreateUserSuccessImpl>
      get copyWith => __$$AuthCreateUserSuccessImplCopyWithImpl<
          _$AuthCreateUserSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommonFailure failure) failure,
    required TResult Function(String message) createUserSuccess,
    required TResult Function() loginUserSuccess,
    required TResult Function(GetData getData) getDataSuccess,
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
    TResult? Function(GetData getData)? getDataSuccess,
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
    TResult Function(GetData getData)? getDataSuccess,
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
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthFailure value) failure,
    required TResult Function(AuthCreateUserSuccess value) createUserSuccess,
    required TResult Function(AuthLoginUserSuccess value) loginUserSuccess,
    required TResult Function(AuthGetDataSuccess value) getDataSuccess,
  }) {
    return createUserSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthFailure value)? failure,
    TResult? Function(AuthCreateUserSuccess value)? createUserSuccess,
    TResult? Function(AuthLoginUserSuccess value)? loginUserSuccess,
    TResult? Function(AuthGetDataSuccess value)? getDataSuccess,
  }) {
    return createUserSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthCreateUserSuccess value)? createUserSuccess,
    TResult Function(AuthLoginUserSuccess value)? loginUserSuccess,
    TResult Function(AuthGetDataSuccess value)? getDataSuccess,
    required TResult orElse(),
  }) {
    if (createUserSuccess != null) {
      return createUserSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthCreateUserSuccess implements AuthState {
  const factory AuthCreateUserSuccess(final String message) =
      _$AuthCreateUserSuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AuthCreateUserSuccessImplCopyWith<_$AuthCreateUserSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthLoginUserSuccessImplCopyWith<$Res> {
  factory _$$AuthLoginUserSuccessImplCopyWith(_$AuthLoginUserSuccessImpl value,
          $Res Function(_$AuthLoginUserSuccessImpl) then) =
      __$$AuthLoginUserSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoginUserSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLoginUserSuccessImpl>
    implements _$$AuthLoginUserSuccessImplCopyWith<$Res> {
  __$$AuthLoginUserSuccessImplCopyWithImpl(_$AuthLoginUserSuccessImpl _value,
      $Res Function(_$AuthLoginUserSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoginUserSuccessImpl implements AuthLoginUserSuccess {
  const _$AuthLoginUserSuccessImpl();

  @override
  String toString() {
    return 'AuthState.loginUserSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLoginUserSuccessImpl);
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
    required TResult Function(GetData getData) getDataSuccess,
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
    TResult? Function(GetData getData)? getDataSuccess,
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
    TResult Function(GetData getData)? getDataSuccess,
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
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthFailure value) failure,
    required TResult Function(AuthCreateUserSuccess value) createUserSuccess,
    required TResult Function(AuthLoginUserSuccess value) loginUserSuccess,
    required TResult Function(AuthGetDataSuccess value) getDataSuccess,
  }) {
    return loginUserSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthFailure value)? failure,
    TResult? Function(AuthCreateUserSuccess value)? createUserSuccess,
    TResult? Function(AuthLoginUserSuccess value)? loginUserSuccess,
    TResult? Function(AuthGetDataSuccess value)? getDataSuccess,
  }) {
    return loginUserSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthCreateUserSuccess value)? createUserSuccess,
    TResult Function(AuthLoginUserSuccess value)? loginUserSuccess,
    TResult Function(AuthGetDataSuccess value)? getDataSuccess,
    required TResult orElse(),
  }) {
    if (loginUserSuccess != null) {
      return loginUserSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthLoginUserSuccess implements AuthState {
  const factory AuthLoginUserSuccess() = _$AuthLoginUserSuccessImpl;
}

/// @nodoc
abstract class _$$AuthGetDataSuccessImplCopyWith<$Res> {
  factory _$$AuthGetDataSuccessImplCopyWith(_$AuthGetDataSuccessImpl value,
          $Res Function(_$AuthGetDataSuccessImpl) then) =
      __$$AuthGetDataSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetData getData});
}

/// @nodoc
class __$$AuthGetDataSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthGetDataSuccessImpl>
    implements _$$AuthGetDataSuccessImplCopyWith<$Res> {
  __$$AuthGetDataSuccessImplCopyWithImpl(_$AuthGetDataSuccessImpl _value,
      $Res Function(_$AuthGetDataSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getData = null,
  }) {
    return _then(_$AuthGetDataSuccessImpl(
      null == getData
          ? _value.getData
          : getData // ignore: cast_nullable_to_non_nullable
              as GetData,
    ));
  }
}

/// @nodoc

class _$AuthGetDataSuccessImpl implements AuthGetDataSuccess {
  const _$AuthGetDataSuccessImpl(this.getData);

  @override
  final GetData getData;

  @override
  String toString() {
    return 'AuthState.getDataSuccess(getData: $getData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthGetDataSuccessImpl &&
            (identical(other.getData, getData) || other.getData == getData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthGetDataSuccessImplCopyWith<_$AuthGetDataSuccessImpl> get copyWith =>
      __$$AuthGetDataSuccessImplCopyWithImpl<_$AuthGetDataSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommonFailure failure) failure,
    required TResult Function(String message) createUserSuccess,
    required TResult Function() loginUserSuccess,
    required TResult Function(GetData getData) getDataSuccess,
  }) {
    return getDataSuccess(getData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommonFailure failure)? failure,
    TResult? Function(String message)? createUserSuccess,
    TResult? Function()? loginUserSuccess,
    TResult? Function(GetData getData)? getDataSuccess,
  }) {
    return getDataSuccess?.call(getData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommonFailure failure)? failure,
    TResult Function(String message)? createUserSuccess,
    TResult Function()? loginUserSuccess,
    TResult Function(GetData getData)? getDataSuccess,
    required TResult orElse(),
  }) {
    if (getDataSuccess != null) {
      return getDataSuccess(getData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthFailure value) failure,
    required TResult Function(AuthCreateUserSuccess value) createUserSuccess,
    required TResult Function(AuthLoginUserSuccess value) loginUserSuccess,
    required TResult Function(AuthGetDataSuccess value) getDataSuccess,
  }) {
    return getDataSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthFailure value)? failure,
    TResult? Function(AuthCreateUserSuccess value)? createUserSuccess,
    TResult? Function(AuthLoginUserSuccess value)? loginUserSuccess,
    TResult? Function(AuthGetDataSuccess value)? getDataSuccess,
  }) {
    return getDataSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthFailure value)? failure,
    TResult Function(AuthCreateUserSuccess value)? createUserSuccess,
    TResult Function(AuthLoginUserSuccess value)? loginUserSuccess,
    TResult Function(AuthGetDataSuccess value)? getDataSuccess,
    required TResult orElse(),
  }) {
    if (getDataSuccess != null) {
      return getDataSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthGetDataSuccess implements AuthState {
  const factory AuthGetDataSuccess(final GetData getData) =
      _$AuthGetDataSuccessImpl;

  GetData get getData;
  @JsonKey(ignore: true)
  _$$AuthGetDataSuccessImplCopyWith<_$AuthGetDataSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
