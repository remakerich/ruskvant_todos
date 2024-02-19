// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'async_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AsyncState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() data,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? data,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? data,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncLoading value) loading,
    required TResult Function(AsyncData value) data,
    required TResult Function(AsyncError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncLoading value)? loading,
    TResult? Function(AsyncData value)? data,
    TResult? Function(AsyncError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncLoading value)? loading,
    TResult Function(AsyncData value)? data,
    TResult Function(AsyncError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncStateCopyWith<$Res> {
  factory $AsyncStateCopyWith(
          AsyncState value, $Res Function(AsyncState) then) =
      _$AsyncStateCopyWithImpl<$Res, AsyncState>;
}

/// @nodoc
class _$AsyncStateCopyWithImpl<$Res, $Val extends AsyncState>
    implements $AsyncStateCopyWith<$Res> {
  _$AsyncStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AsyncLoadingImplCopyWith<$Res> {
  factory _$$AsyncLoadingImplCopyWith(
          _$AsyncLoadingImpl value, $Res Function(_$AsyncLoadingImpl) then) =
      __$$AsyncLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AsyncLoadingImplCopyWithImpl<$Res>
    extends _$AsyncStateCopyWithImpl<$Res, _$AsyncLoadingImpl>
    implements _$$AsyncLoadingImplCopyWith<$Res> {
  __$$AsyncLoadingImplCopyWithImpl(
      _$AsyncLoadingImpl _value, $Res Function(_$AsyncLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AsyncLoadingImpl extends AsyncLoading {
  const _$AsyncLoadingImpl() : super._();

  @override
  String toString() {
    return 'AsyncState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AsyncLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() data,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? data,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? data,
    TResult Function()? error,
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
    required TResult Function(AsyncLoading value) loading,
    required TResult Function(AsyncData value) data,
    required TResult Function(AsyncError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncLoading value)? loading,
    TResult? Function(AsyncData value)? data,
    TResult? Function(AsyncError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncLoading value)? loading,
    TResult Function(AsyncData value)? data,
    TResult Function(AsyncError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AsyncLoading extends AsyncState {
  const factory AsyncLoading() = _$AsyncLoadingImpl;
  const AsyncLoading._() : super._();
}

/// @nodoc
abstract class _$$AsyncDataImplCopyWith<$Res> {
  factory _$$AsyncDataImplCopyWith(
          _$AsyncDataImpl value, $Res Function(_$AsyncDataImpl) then) =
      __$$AsyncDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AsyncDataImplCopyWithImpl<$Res>
    extends _$AsyncStateCopyWithImpl<$Res, _$AsyncDataImpl>
    implements _$$AsyncDataImplCopyWith<$Res> {
  __$$AsyncDataImplCopyWithImpl(
      _$AsyncDataImpl _value, $Res Function(_$AsyncDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AsyncDataImpl extends AsyncData {
  const _$AsyncDataImpl() : super._();

  @override
  String toString() {
    return 'AsyncState.data()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AsyncDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() data,
    required TResult Function() error,
  }) {
    return data();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? data,
    TResult? Function()? error,
  }) {
    return data?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncLoading value) loading,
    required TResult Function(AsyncData value) data,
    required TResult Function(AsyncError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncLoading value)? loading,
    TResult? Function(AsyncData value)? data,
    TResult? Function(AsyncError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncLoading value)? loading,
    TResult Function(AsyncData value)? data,
    TResult Function(AsyncError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class AsyncData extends AsyncState {
  const factory AsyncData() = _$AsyncDataImpl;
  const AsyncData._() : super._();
}

/// @nodoc
abstract class _$$AsyncErrorImplCopyWith<$Res> {
  factory _$$AsyncErrorImplCopyWith(
          _$AsyncErrorImpl value, $Res Function(_$AsyncErrorImpl) then) =
      __$$AsyncErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AsyncErrorImplCopyWithImpl<$Res>
    extends _$AsyncStateCopyWithImpl<$Res, _$AsyncErrorImpl>
    implements _$$AsyncErrorImplCopyWith<$Res> {
  __$$AsyncErrorImplCopyWithImpl(
      _$AsyncErrorImpl _value, $Res Function(_$AsyncErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AsyncErrorImpl extends AsyncError {
  const _$AsyncErrorImpl() : super._();

  @override
  String toString() {
    return 'AsyncState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AsyncErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() data,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? data,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncLoading value) loading,
    required TResult Function(AsyncData value) data,
    required TResult Function(AsyncError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncLoading value)? loading,
    TResult? Function(AsyncData value)? data,
    TResult? Function(AsyncError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncLoading value)? loading,
    TResult Function(AsyncData value)? data,
    TResult Function(AsyncError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AsyncError extends AsyncState {
  const factory AsyncError() = _$AsyncErrorImpl;
  const AsyncError._() : super._();
}
