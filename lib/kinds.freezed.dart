// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kinds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Kind {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() kVal,
    required TResult Function() kEff,
    required TResult Function() kEffConst,
    required TResult Function(List<Kind> args, Kind result) kCon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? kVal,
    TResult? Function()? kEff,
    TResult? Function()? kEffConst,
    TResult? Function(List<Kind> args, Kind result)? kCon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? kVal,
    TResult Function()? kEff,
    TResult Function()? kEffConst,
    TResult Function(List<Kind> args, Kind result)? kCon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KVal value) kVal,
    required TResult Function(KEff value) kEff,
    required TResult Function(KEffConst value) kEffConst,
    required TResult Function(KCon value) kCon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KVal value)? kVal,
    TResult? Function(KEff value)? kEff,
    TResult? Function(KEffConst value)? kEffConst,
    TResult? Function(KCon value)? kCon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KVal value)? kVal,
    TResult Function(KEff value)? kEff,
    TResult Function(KEffConst value)? kEffConst,
    TResult Function(KCon value)? kCon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KindCopyWith<$Res> {
  factory $KindCopyWith(Kind value, $Res Function(Kind) then) =
      _$KindCopyWithImpl<$Res, Kind>;
}

/// @nodoc
class _$KindCopyWithImpl<$Res, $Val extends Kind>
    implements $KindCopyWith<$Res> {
  _$KindCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$KValCopyWith<$Res> {
  factory _$$KValCopyWith(_$KVal value, $Res Function(_$KVal) then) =
      __$$KValCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KValCopyWithImpl<$Res> extends _$KindCopyWithImpl<$Res, _$KVal>
    implements _$$KValCopyWith<$Res> {
  __$$KValCopyWithImpl(_$KVal _value, $Res Function(_$KVal) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KVal extends KVal {
  const _$KVal() : super._();

  @override
  String toString() {
    return 'Kind.kVal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$KVal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() kVal,
    required TResult Function() kEff,
    required TResult Function() kEffConst,
    required TResult Function(List<Kind> args, Kind result) kCon,
  }) {
    return kVal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? kVal,
    TResult? Function()? kEff,
    TResult? Function()? kEffConst,
    TResult? Function(List<Kind> args, Kind result)? kCon,
  }) {
    return kVal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? kVal,
    TResult Function()? kEff,
    TResult Function()? kEffConst,
    TResult Function(List<Kind> args, Kind result)? kCon,
    required TResult orElse(),
  }) {
    if (kVal != null) {
      return kVal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KVal value) kVal,
    required TResult Function(KEff value) kEff,
    required TResult Function(KEffConst value) kEffConst,
    required TResult Function(KCon value) kCon,
  }) {
    return kVal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KVal value)? kVal,
    TResult? Function(KEff value)? kEff,
    TResult? Function(KEffConst value)? kEffConst,
    TResult? Function(KCon value)? kCon,
  }) {
    return kVal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KVal value)? kVal,
    TResult Function(KEff value)? kEff,
    TResult Function(KEffConst value)? kEffConst,
    TResult Function(KCon value)? kCon,
    required TResult orElse(),
  }) {
    if (kVal != null) {
      return kVal(this);
    }
    return orElse();
  }
}

abstract class KVal extends Kind {
  const factory KVal() = _$KVal;
  const KVal._() : super._();
}

/// @nodoc
abstract class _$$KEffCopyWith<$Res> {
  factory _$$KEffCopyWith(_$KEff value, $Res Function(_$KEff) then) =
      __$$KEffCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KEffCopyWithImpl<$Res> extends _$KindCopyWithImpl<$Res, _$KEff>
    implements _$$KEffCopyWith<$Res> {
  __$$KEffCopyWithImpl(_$KEff _value, $Res Function(_$KEff) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KEff extends KEff {
  const _$KEff() : super._();

  @override
  String toString() {
    return 'Kind.kEff()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$KEff);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() kVal,
    required TResult Function() kEff,
    required TResult Function() kEffConst,
    required TResult Function(List<Kind> args, Kind result) kCon,
  }) {
    return kEff();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? kVal,
    TResult? Function()? kEff,
    TResult? Function()? kEffConst,
    TResult? Function(List<Kind> args, Kind result)? kCon,
  }) {
    return kEff?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? kVal,
    TResult Function()? kEff,
    TResult Function()? kEffConst,
    TResult Function(List<Kind> args, Kind result)? kCon,
    required TResult orElse(),
  }) {
    if (kEff != null) {
      return kEff();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KVal value) kVal,
    required TResult Function(KEff value) kEff,
    required TResult Function(KEffConst value) kEffConst,
    required TResult Function(KCon value) kCon,
  }) {
    return kEff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KVal value)? kVal,
    TResult? Function(KEff value)? kEff,
    TResult? Function(KEffConst value)? kEffConst,
    TResult? Function(KCon value)? kCon,
  }) {
    return kEff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KVal value)? kVal,
    TResult Function(KEff value)? kEff,
    TResult Function(KEffConst value)? kEffConst,
    TResult Function(KCon value)? kCon,
    required TResult orElse(),
  }) {
    if (kEff != null) {
      return kEff(this);
    }
    return orElse();
  }
}

abstract class KEff extends Kind {
  const factory KEff() = _$KEff;
  const KEff._() : super._();
}

/// @nodoc
abstract class _$$KEffConstCopyWith<$Res> {
  factory _$$KEffConstCopyWith(
          _$KEffConst value, $Res Function(_$KEffConst) then) =
      __$$KEffConstCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KEffConstCopyWithImpl<$Res>
    extends _$KindCopyWithImpl<$Res, _$KEffConst>
    implements _$$KEffConstCopyWith<$Res> {
  __$$KEffConstCopyWithImpl(
      _$KEffConst _value, $Res Function(_$KEffConst) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KEffConst extends KEffConst {
  const _$KEffConst() : super._();

  @override
  String toString() {
    return 'Kind.kEffConst()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$KEffConst);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() kVal,
    required TResult Function() kEff,
    required TResult Function() kEffConst,
    required TResult Function(List<Kind> args, Kind result) kCon,
  }) {
    return kEffConst();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? kVal,
    TResult? Function()? kEff,
    TResult? Function()? kEffConst,
    TResult? Function(List<Kind> args, Kind result)? kCon,
  }) {
    return kEffConst?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? kVal,
    TResult Function()? kEff,
    TResult Function()? kEffConst,
    TResult Function(List<Kind> args, Kind result)? kCon,
    required TResult orElse(),
  }) {
    if (kEffConst != null) {
      return kEffConst();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KVal value) kVal,
    required TResult Function(KEff value) kEff,
    required TResult Function(KEffConst value) kEffConst,
    required TResult Function(KCon value) kCon,
  }) {
    return kEffConst(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KVal value)? kVal,
    TResult? Function(KEff value)? kEff,
    TResult? Function(KEffConst value)? kEffConst,
    TResult? Function(KCon value)? kCon,
  }) {
    return kEffConst?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KVal value)? kVal,
    TResult Function(KEff value)? kEff,
    TResult Function(KEffConst value)? kEffConst,
    TResult Function(KCon value)? kCon,
    required TResult orElse(),
  }) {
    if (kEffConst != null) {
      return kEffConst(this);
    }
    return orElse();
  }
}

abstract class KEffConst extends Kind {
  const factory KEffConst() = _$KEffConst;
  const KEffConst._() : super._();
}

/// @nodoc
abstract class _$$KConCopyWith<$Res> {
  factory _$$KConCopyWith(_$KCon value, $Res Function(_$KCon) then) =
      __$$KConCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Kind> args, Kind result});

  $KindCopyWith<$Res> get result;
}

/// @nodoc
class __$$KConCopyWithImpl<$Res> extends _$KindCopyWithImpl<$Res, _$KCon>
    implements _$$KConCopyWith<$Res> {
  __$$KConCopyWithImpl(_$KCon _value, $Res Function(_$KCon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
    Object? result = null,
  }) {
    return _then(_$KCon(
      null == args
          ? _value._args
          : args // ignore: cast_nullable_to_non_nullable
              as List<Kind>,
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Kind,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $KindCopyWith<$Res> get result {
    return $KindCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$KCon extends KCon {
  const _$KCon(final List<Kind> args, this.result)
      : _args = args,
        super._();

  final List<Kind> _args;
  @override
  List<Kind> get args {
    if (_args is EqualUnmodifiableListView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_args);
  }

  @override
  final Kind result;

  @override
  String toString() {
    return 'Kind.kCon(args: $args, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KCon &&
            const DeepCollectionEquality().equals(other._args, _args) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_args), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KConCopyWith<_$KCon> get copyWith =>
      __$$KConCopyWithImpl<_$KCon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() kVal,
    required TResult Function() kEff,
    required TResult Function() kEffConst,
    required TResult Function(List<Kind> args, Kind result) kCon,
  }) {
    return kCon(args, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? kVal,
    TResult? Function()? kEff,
    TResult? Function()? kEffConst,
    TResult? Function(List<Kind> args, Kind result)? kCon,
  }) {
    return kCon?.call(args, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? kVal,
    TResult Function()? kEff,
    TResult Function()? kEffConst,
    TResult Function(List<Kind> args, Kind result)? kCon,
    required TResult orElse(),
  }) {
    if (kCon != null) {
      return kCon(args, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KVal value) kVal,
    required TResult Function(KEff value) kEff,
    required TResult Function(KEffConst value) kEffConst,
    required TResult Function(KCon value) kCon,
  }) {
    return kCon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KVal value)? kVal,
    TResult? Function(KEff value)? kEff,
    TResult? Function(KEffConst value)? kEffConst,
    TResult? Function(KCon value)? kCon,
  }) {
    return kCon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KVal value)? kVal,
    TResult Function(KEff value)? kEff,
    TResult Function(KEffConst value)? kEffConst,
    TResult Function(KCon value)? kCon,
    required TResult orElse(),
  }) {
    if (kCon != null) {
      return kCon(this);
    }
    return orElse();
  }
}

abstract class KCon extends Kind {
  const factory KCon(final List<Kind> args, final Kind result) = _$KCon;
  const KCon._() : super._();

  List<Kind> get args;
  Kind get result;
  @JsonKey(ignore: true)
  _$$KConCopyWith<_$KCon> get copyWith => throw _privateConstructorUsedError;
}
