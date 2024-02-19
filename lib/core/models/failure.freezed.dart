// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  String? get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value) server,
    required TResult Function(String? value) client,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? value)? server,
    TResult? Function(String? value)? client,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? server,
    TResult Function(String? value)? client,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureServer value) server,
    required TResult Function(FailureClient value) client,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureServer value)? server,
    TResult? Function(FailureClient value)? client,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureServer value)? server,
    TResult Function(FailureClient value)? client,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String? value});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FailureServerImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FailureServerImplCopyWith(
          _$FailureServerImpl value, $Res Function(_$FailureServerImpl) then) =
      __$$FailureServerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? value});
}

/// @nodoc
class __$$FailureServerImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureServerImpl>
    implements _$$FailureServerImplCopyWith<$Res> {
  __$$FailureServerImplCopyWithImpl(
      _$FailureServerImpl _value, $Res Function(_$FailureServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$FailureServerImpl(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureServerImpl extends FailureServer {
  const _$FailureServerImpl(this.value) : super._();

  @override
  final String? value;

  @override
  String toString() {
    return 'Failure.server(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureServerImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureServerImplCopyWith<_$FailureServerImpl> get copyWith =>
      __$$FailureServerImplCopyWithImpl<_$FailureServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value) server,
    required TResult Function(String? value) client,
  }) {
    return server(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? value)? server,
    TResult? Function(String? value)? client,
  }) {
    return server?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? server,
    TResult Function(String? value)? client,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureServer value) server,
    required TResult Function(FailureClient value) client,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureServer value)? server,
    TResult? Function(FailureClient value)? client,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureServer value)? server,
    TResult Function(FailureClient value)? client,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class FailureServer extends Failure {
  const factory FailureServer(final String? value) = _$FailureServerImpl;
  const FailureServer._() : super._();

  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$FailureServerImplCopyWith<_$FailureServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureClientImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FailureClientImplCopyWith(
          _$FailureClientImpl value, $Res Function(_$FailureClientImpl) then) =
      __$$FailureClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? value});
}

/// @nodoc
class __$$FailureClientImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureClientImpl>
    implements _$$FailureClientImplCopyWith<$Res> {
  __$$FailureClientImplCopyWithImpl(
      _$FailureClientImpl _value, $Res Function(_$FailureClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$FailureClientImpl(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureClientImpl extends FailureClient {
  const _$FailureClientImpl(this.value) : super._();

  @override
  final String? value;

  @override
  String toString() {
    return 'Failure.client(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureClientImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureClientImplCopyWith<_$FailureClientImpl> get copyWith =>
      __$$FailureClientImplCopyWithImpl<_$FailureClientImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? value) server,
    required TResult Function(String? value) client,
  }) {
    return client(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? value)? server,
    TResult? Function(String? value)? client,
  }) {
    return client?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? value)? server,
    TResult Function(String? value)? client,
    required TResult orElse(),
  }) {
    if (client != null) {
      return client(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureServer value) server,
    required TResult Function(FailureClient value) client,
  }) {
    return client(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureServer value)? server,
    TResult? Function(FailureClient value)? client,
  }) {
    return client?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureServer value)? server,
    TResult Function(FailureClient value)? client,
    required TResult orElse(),
  }) {
    if (client != null) {
      return client(this);
    }
    return orElse();
  }
}

abstract class FailureClient extends Failure {
  const factory FailureClient(final String? value) = _$FailureClientImpl;
  const FailureClient._() : super._();

  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$FailureClientImplCopyWith<_$FailureClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
