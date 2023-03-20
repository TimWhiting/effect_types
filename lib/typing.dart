import 'package:effect_types/types.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'typing.freezed.dart';

typedef TandE = (Type, TEff);

extension on Type {
  TandE withEffect(TEff eff) => (this, eff);

  (Type, TEff, Type)? get fnType {
    if (this is! TCon) {
      return null;
    }
    final TCon(:args) = this as TCon;
    if (args.length != 3) {
      return null;
    }
    final [arg, eff, ret] = args;
    return (arg, eff as TEff, ret);
  }
}

extension on TandE {
  TEff get effect => this.$2;
  Type get type => this.$1;
}

@freezed
class TypeEnv with _$TypeEnv {
  const TypeEnv._();
  const factory TypeEnv({@Default(IMapConst({})) IMap<String, Type> env}) =
      _TypeEnv;

  bool checkVar(String x, TandE expected) => env[x] == expected.type;

  bool checkLam(Type x, TandE e, TandE expected) {
    final t = expected.type.fnType;
    if (t == null) {
      return false;
    }
    final (arg, eff, ret) = t;
    if (arg != x || e.type != ret || e.effect != eff) {
      return false;
    }
    return true;
  }

  bool checkApp(TandE e1, TandE e2, TandE expected) {
    final t = e1.type.fnType;
    if (t == null) {
      return false;
    }
    final (arg, eff, ret) = t;
    if (arg != e2.type || ret != expected.type) {
      return false;
    }
    if (e1.effect != e2.effect ||
        expected.effect != e1.effect ||
        eff != e1.effect) {
      return false;
    }
    return true;
  }

  bool checkHandle(
    List<TandE> opClauses,
    List<Type> opArgs,
    List<TandE> opExprs,
    List<Type> opResume,
    Type x,
    TEff l,
    TandE eRet,
    TandE e,
    TandE expected,
  ) {
    final tRet = eRet.type;
    final effRet = eRet.effect;
    if (opArgs.length != opClauses.length ||
        opClauses.length != opResume.length) {
      return false;
    }
    if (x != e.type) {
      return false;
    }
    if (e.effect.flatten case TEff(args: final args)) {
      if (!args.contains(l)) {
        return false;
      }
      final newEff = (Type.tEffFlatRow([...args]..remove(l)) as TEff);
      if (!newEff.rowEq(eRet.effect)) {
        return false;
      }
    }
    for (var i = 0; i < opArgs.length; i++) {
      final opExpr = opExprs[i];
      if (opExpr.type != tRet || opExpr.effect != effRet) {
        return false;
      }
      final t = opClauses[i].type.fnType;
      if (opClauses[i].effect != Type.emptyEff) {
        return false;
      }
      final r = opResume[i].fnType;
      if (t == null || r == null) {
        return false;
      }
      final (arg, eff, ret) = t;
      final (argR, effR, retR) = r;
      if (eff != l) {
        return false;
      }
      final opArg = opArgs[i];
      if (argR != ret || opArg != arg || effR != effRet || retR != tRet) {
        return false;
      }
    }

    return true;
  }

  bool checkLet(TandE e1, Type x, TandE e2, TandE expected) {
    if (e1.type != x || e2.type != expected.type) {
      return false;
    }
    if (expected.effect != e2.effect || e1.effect != e2.effect) {
      return false;
    }
    return true;
  }

  bool checkGen(Type e, Type expected) {
    throw UnimplementedError();
  }

  bool checkInst(Type e, List<Type> subs, Type expected) {
    throw UnimplementedError();
  }
}
