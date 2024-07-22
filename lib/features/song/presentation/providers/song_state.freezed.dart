// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SongState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommonFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommonFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommonFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SongInitial value) initial,
    required TResult Function(SongLoading value) loading,
    required TResult Function(SongFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SongInitial value)? initial,
    TResult? Function(SongLoading value)? loading,
    TResult? Function(SongFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongInitial value)? initial,
    TResult Function(SongLoading value)? loading,
    TResult Function(SongFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongStateCopyWith<$Res> {
  factory $SongStateCopyWith(SongState value, $Res Function(SongState) then) =
      _$SongStateCopyWithImpl<$Res, SongState>;
}

/// @nodoc
class _$SongStateCopyWithImpl<$Res, $Val extends SongState>
    implements $SongStateCopyWith<$Res> {
  _$SongStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SongInitialImplCopyWith<$Res> {
  factory _$$SongInitialImplCopyWith(
          _$SongInitialImpl value, $Res Function(_$SongInitialImpl) then) =
      __$$SongInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SongInitialImplCopyWithImpl<$Res>
    extends _$SongStateCopyWithImpl<$Res, _$SongInitialImpl>
    implements _$$SongInitialImplCopyWith<$Res> {
  __$$SongInitialImplCopyWithImpl(
      _$SongInitialImpl _value, $Res Function(_$SongInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SongInitialImpl implements SongInitial {
  const _$SongInitialImpl();

  @override
  String toString() {
    return 'SongState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SongInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommonFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommonFailure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommonFailure failure)? failure,
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
    required TResult Function(SongInitial value) initial,
    required TResult Function(SongLoading value) loading,
    required TResult Function(SongFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SongInitial value)? initial,
    TResult? Function(SongLoading value)? loading,
    TResult? Function(SongFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongInitial value)? initial,
    TResult Function(SongLoading value)? loading,
    TResult Function(SongFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SongInitial implements SongState {
  const factory SongInitial() = _$SongInitialImpl;
}

/// @nodoc
abstract class _$$SongLoadingImplCopyWith<$Res> {
  factory _$$SongLoadingImplCopyWith(
          _$SongLoadingImpl value, $Res Function(_$SongLoadingImpl) then) =
      __$$SongLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SongLoadingImplCopyWithImpl<$Res>
    extends _$SongStateCopyWithImpl<$Res, _$SongLoadingImpl>
    implements _$$SongLoadingImplCopyWith<$Res> {
  __$$SongLoadingImplCopyWithImpl(
      _$SongLoadingImpl _value, $Res Function(_$SongLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SongLoadingImpl implements SongLoading {
  const _$SongLoadingImpl();

  @override
  String toString() {
    return 'SongState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SongLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommonFailure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommonFailure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommonFailure failure)? failure,
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
    required TResult Function(SongInitial value) initial,
    required TResult Function(SongLoading value) loading,
    required TResult Function(SongFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SongInitial value)? initial,
    TResult? Function(SongLoading value)? loading,
    TResult? Function(SongFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongInitial value)? initial,
    TResult Function(SongLoading value)? loading,
    TResult Function(SongFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SongLoading implements SongState {
  const factory SongLoading() = _$SongLoadingImpl;
}

/// @nodoc
abstract class _$$SongFailureImplCopyWith<$Res> {
  factory _$$SongFailureImplCopyWith(
          _$SongFailureImpl value, $Res Function(_$SongFailureImpl) then) =
      __$$SongFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CommonFailure failure});
}

/// @nodoc
class __$$SongFailureImplCopyWithImpl<$Res>
    extends _$SongStateCopyWithImpl<$Res, _$SongFailureImpl>
    implements _$$SongFailureImplCopyWith<$Res> {
  __$$SongFailureImplCopyWithImpl(
      _$SongFailureImpl _value, $Res Function(_$SongFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$SongFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CommonFailure,
    ));
  }
}

/// @nodoc

class _$SongFailureImpl implements SongFailure {
  const _$SongFailureImpl(this.failure);

  @override
  final CommonFailure failure;

  @override
  String toString() {
    return 'SongState.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongFailureImplCopyWith<_$SongFailureImpl> get copyWith =>
      __$$SongFailureImplCopyWithImpl<_$SongFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CommonFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CommonFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CommonFailure failure)? failure,
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
    required TResult Function(SongInitial value) initial,
    required TResult Function(SongLoading value) loading,
    required TResult Function(SongFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SongInitial value)? initial,
    TResult? Function(SongLoading value)? loading,
    TResult? Function(SongFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SongInitial value)? initial,
    TResult Function(SongLoading value)? loading,
    TResult Function(SongFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class SongFailure implements SongState {
  const factory SongFailure(final CommonFailure failure) = _$SongFailureImpl;

  CommonFailure get failure;
  @JsonKey(ignore: true)
  _$$SongFailureImplCopyWith<_$SongFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
