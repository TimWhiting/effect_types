// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'typing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TypeEnv {
  IMap<String, Type> get env => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TypeEnvCopyWith<TypeEnv> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeEnvCopyWith<$Res> {
  factory $TypeEnvCopyWith(TypeEnv value, $Res Function(TypeEnv) then) =
      _$TypeEnvCopyWithImpl<$Res, TypeEnv>;
  @useResult
  $Res call({IMap<String, Type> env});
}

/// @nodoc
class _$TypeEnvCopyWithImpl<$Res, $Val extends TypeEnv>
    implements $TypeEnvCopyWith<$Res> {
  _$TypeEnvCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? env = null,
  }) {
    return _then(_value.copyWith(
      env: null == env
          ? _value.env
          : env // ignore: cast_nullable_to_non_nullable
              as IMap<String, Type>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TypeEnvCopyWith<$Res> implements $TypeEnvCopyWith<$Res> {
  factory _$$_TypeEnvCopyWith(
          _$_TypeEnv value, $Res Function(_$_TypeEnv) then) =
      __$$_TypeEnvCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IMap<String, Type> env});
}

/// @nodoc
class __$$_TypeEnvCopyWithImpl<$Res>
    extends _$TypeEnvCopyWithImpl<$Res, _$_TypeEnv>
    implements _$$_TypeEnvCopyWith<$Res> {
  __$$_TypeEnvCopyWithImpl(_$_TypeEnv _value, $Res Function(_$_TypeEnv) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? env = null,
  }) {
    return _then(_$_TypeEnv(
      env: null == env
          ? _value.env
          : env // ignore: cast_nullable_to_non_nullable
              as IMap<String, Type>,
    ));
  }
}

/// @nodoc

class _$_TypeEnv extends _TypeEnv {
  const _$_TypeEnv({this.env = const IMapConst({})}) : super._();

  @override
  @JsonKey()
  final IMap<String, Type> env;

  @override
  String toString() {
    return 'TypeEnv(env: $env)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeEnv &&
            (identical(other.env, env) || other.env == env));
  }

  @override
  int get hashCode => Object.hash(runtimeType, env);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeEnvCopyWith<_$_TypeEnv> get copyWith =>
      __$$_TypeEnvCopyWithImpl<_$_TypeEnv>(this, _$identity);
}

abstract class _TypeEnv extends TypeEnv {
  const factory _TypeEnv({final IMap<String, Type> env}) = _$_TypeEnv;
  const _TypeEnv._() : super._();

  @override
  IMap<String, Type> get env;
  @override
  @JsonKey(ignore: true)
  _$$_TypeEnvCopyWith<_$_TypeEnv> get copyWith =>
      throw _privateConstructorUsedError;
}
