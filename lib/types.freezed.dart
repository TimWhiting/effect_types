// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Type {
  Kind get kind => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Kind kind, String name) tVar,
    required TResult Function(Kind kind, String name, List<Type> args) tCon,
    required TResult Function(String name, List<Type> args, Kind kind) tEff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Kind kind, String name)? tVar,
    TResult? Function(Kind kind, String name, List<Type> args)? tCon,
    TResult? Function(String name, List<Type> args, Kind kind)? tEff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Kind kind, String name)? tVar,
    TResult Function(Kind kind, String name, List<Type> args)? tCon,
    TResult Function(String name, List<Type> args, Kind kind)? tEff,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TVar value) tVar,
    required TResult Function(TCon value) tCon,
    required TResult Function(TEff value) tEff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TVar value)? tVar,
    TResult? Function(TCon value)? tCon,
    TResult? Function(TEff value)? tEff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TVar value)? tVar,
    TResult Function(TCon value)? tCon,
    TResult Function(TEff value)? tEff,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TypeCopyWith<Type> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeCopyWith<$Res> {
  factory $TypeCopyWith(Type value, $Res Function(Type) then) =
      _$TypeCopyWithImpl<$Res, Type>;
  @useResult
  $Res call({Kind kind, String name});

  $KindCopyWith<$Res> get kind;
}

/// @nodoc
class _$TypeCopyWithImpl<$Res, $Val extends Type>
    implements $TypeCopyWith<$Res> {
  _$TypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as Kind,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KindCopyWith<$Res> get kind {
    return $KindCopyWith<$Res>(_value.kind, (value) {
      return _then(_value.copyWith(kind: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TVarCopyWith<$Res> implements $TypeCopyWith<$Res> {
  factory _$$TVarCopyWith(_$TVar value, $Res Function(_$TVar) then) =
      __$$TVarCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Kind kind, String name});

  @override
  $KindCopyWith<$Res> get kind;
}

/// @nodoc
class __$$TVarCopyWithImpl<$Res> extends _$TypeCopyWithImpl<$Res, _$TVar>
    implements _$$TVarCopyWith<$Res> {
  __$$TVarCopyWithImpl(_$TVar _value, $Res Function(_$TVar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? name = null,
  }) {
    return _then(_$TVar(
      null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as Kind,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TVar extends TVar {
  const _$TVar(this.kind, this.name) : super._();

  @override
  final Kind kind;
  @override
  final String name;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TVar &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kind, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TVarCopyWith<_$TVar> get copyWith =>
      __$$TVarCopyWithImpl<_$TVar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Kind kind, String name) tVar,
    required TResult Function(Kind kind, String name, List<Type> args) tCon,
    required TResult Function(String name, List<Type> args, Kind kind) tEff,
  }) {
    return tVar(kind, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Kind kind, String name)? tVar,
    TResult? Function(Kind kind, String name, List<Type> args)? tCon,
    TResult? Function(String name, List<Type> args, Kind kind)? tEff,
  }) {
    return tVar?.call(kind, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Kind kind, String name)? tVar,
    TResult Function(Kind kind, String name, List<Type> args)? tCon,
    TResult Function(String name, List<Type> args, Kind kind)? tEff,
    required TResult orElse(),
  }) {
    if (tVar != null) {
      return tVar(kind, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TVar value) tVar,
    required TResult Function(TCon value) tCon,
    required TResult Function(TEff value) tEff,
  }) {
    return tVar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TVar value)? tVar,
    TResult? Function(TCon value)? tCon,
    TResult? Function(TEff value)? tEff,
  }) {
    return tVar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TVar value)? tVar,
    TResult Function(TCon value)? tCon,
    TResult Function(TEff value)? tEff,
    required TResult orElse(),
  }) {
    if (tVar != null) {
      return tVar(this);
    }
    return orElse();
  }
}

abstract class TVar extends Type {
  const factory TVar(final Kind kind, final String name) = _$TVar;
  const TVar._() : super._();

  @override
  Kind get kind;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TVarCopyWith<_$TVar> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TConCopyWith<$Res> implements $TypeCopyWith<$Res> {
  factory _$$TConCopyWith(_$TCon value, $Res Function(_$TCon) then) =
      __$$TConCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Kind kind, String name, List<Type> args});

  @override
  $KindCopyWith<$Res> get kind;
}

/// @nodoc
class __$$TConCopyWithImpl<$Res> extends _$TypeCopyWithImpl<$Res, _$TCon>
    implements _$$TConCopyWith<$Res> {
  __$$TConCopyWithImpl(_$TCon _value, $Res Function(_$TCon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? name = null,
    Object? args = null,
  }) {
    return _then(_$TCon(
      null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as Kind,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == args
          ? _value._args
          : args // ignore: cast_nullable_to_non_nullable
              as List<Type>,
    ));
  }
}

/// @nodoc

class _$TCon extends TCon {
  const _$TCon(this.kind, this.name, final List<Type> args)
      : _args = args,
        super._();

  @override
  final Kind kind;
  @override
  final String name;
  final List<Type> _args;
  @override
  List<Type> get args {
    if (_args is EqualUnmodifiableListView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_args);
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TCon &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._args, _args));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, kind, name, const DeepCollectionEquality().hash(_args));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TConCopyWith<_$TCon> get copyWith =>
      __$$TConCopyWithImpl<_$TCon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Kind kind, String name) tVar,
    required TResult Function(Kind kind, String name, List<Type> args) tCon,
    required TResult Function(String name, List<Type> args, Kind kind) tEff,
  }) {
    return tCon(kind, name, args);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Kind kind, String name)? tVar,
    TResult? Function(Kind kind, String name, List<Type> args)? tCon,
    TResult? Function(String name, List<Type> args, Kind kind)? tEff,
  }) {
    return tCon?.call(kind, name, args);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Kind kind, String name)? tVar,
    TResult Function(Kind kind, String name, List<Type> args)? tCon,
    TResult Function(String name, List<Type> args, Kind kind)? tEff,
    required TResult orElse(),
  }) {
    if (tCon != null) {
      return tCon(kind, name, args);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TVar value) tVar,
    required TResult Function(TCon value) tCon,
    required TResult Function(TEff value) tEff,
  }) {
    return tCon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TVar value)? tVar,
    TResult? Function(TCon value)? tCon,
    TResult? Function(TEff value)? tEff,
  }) {
    return tCon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TVar value)? tVar,
    TResult Function(TCon value)? tCon,
    TResult Function(TEff value)? tEff,
    required TResult orElse(),
  }) {
    if (tCon != null) {
      return tCon(this);
    }
    return orElse();
  }
}

abstract class TCon extends Type {
  const factory TCon(
      final Kind kind, final String name, final List<Type> args) = _$TCon;
  const TCon._() : super._();

  @override
  Kind get kind;
  @override
  String get name;
  List<Type> get args;
  @override
  @JsonKey(ignore: true)
  _$$TConCopyWith<_$TCon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TEffCopyWith<$Res> implements $TypeCopyWith<$Res> {
  factory _$$TEffCopyWith(_$TEff value, $Res Function(_$TEff) then) =
      __$$TEffCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<Type> args, Kind kind});

  @override
  $KindCopyWith<$Res> get kind;
}

/// @nodoc
class __$$TEffCopyWithImpl<$Res> extends _$TypeCopyWithImpl<$Res, _$TEff>
    implements _$$TEffCopyWith<$Res> {
  __$$TEffCopyWithImpl(_$TEff _value, $Res Function(_$TEff) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? args = null,
    Object? kind = null,
  }) {
    return _then(_$TEff(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == args
          ? _value._args
          : args // ignore: cast_nullable_to_non_nullable
              as List<Type>,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as Kind,
    ));
  }
}

/// @nodoc

class _$TEff extends TEff {
  const _$TEff(this.name, final List<Type> args,
      {this.kind = const KEffConst()})
      : _args = args,
        super._();

  @override
  final String name;
  final List<Type> _args;
  @override
  List<Type> get args {
    if (_args is EqualUnmodifiableListView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_args);
  }

  @override
  @JsonKey()
  final Kind kind;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TEff &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._args, _args) &&
            (identical(other.kind, kind) || other.kind == kind));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_args), kind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TEffCopyWith<_$TEff> get copyWith =>
      __$$TEffCopyWithImpl<_$TEff>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Kind kind, String name) tVar,
    required TResult Function(Kind kind, String name, List<Type> args) tCon,
    required TResult Function(String name, List<Type> args, Kind kind) tEff,
  }) {
    return tEff(name, args, kind);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Kind kind, String name)? tVar,
    TResult? Function(Kind kind, String name, List<Type> args)? tCon,
    TResult? Function(String name, List<Type> args, Kind kind)? tEff,
  }) {
    return tEff?.call(name, args, kind);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Kind kind, String name)? tVar,
    TResult Function(Kind kind, String name, List<Type> args)? tCon,
    TResult Function(String name, List<Type> args, Kind kind)? tEff,
    required TResult orElse(),
  }) {
    if (tEff != null) {
      return tEff(name, args, kind);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TVar value) tVar,
    required TResult Function(TCon value) tCon,
    required TResult Function(TEff value) tEff,
  }) {
    return tEff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TVar value)? tVar,
    TResult? Function(TCon value)? tCon,
    TResult? Function(TEff value)? tEff,
  }) {
    return tEff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TVar value)? tVar,
    TResult Function(TCon value)? tCon,
    TResult Function(TEff value)? tEff,
    required TResult orElse(),
  }) {
    if (tEff != null) {
      return tEff(this);
    }
    return orElse();
  }
}

abstract class TEff extends Type {
  const factory TEff(final String name, final List<Type> args,
      {final Kind kind}) = _$TEff;
  const TEff._() : super._();

  @override
  String get name;
  List<Type> get args;
  @override
  Kind get kind;
  @override
  @JsonKey(ignore: true)
  _$$TEffCopyWith<_$TEff> get copyWith => throw _privateConstructorUsedError;
}
