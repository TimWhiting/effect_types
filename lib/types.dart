import 'package:freezed_annotation/freezed_annotation.dart';

import 'kinds.dart';
part 'types.freezed.dart';

const effExt = '<|>';

@freezed
sealed class Type with _$Type {
  const Type._();
  const factory Type.tVar(Kind kind, String name) = TVar;
  const factory Type.tCon(Kind kind, String name, List<Type> args) = TCon;
  factory Type.tFun(Type arg, Type eff, Type result) =>
      TCon(KVal(), '->', [arg, eff, result]);

  const factory Type.tEff(
    String name,
    List<Type> args, {
    @Default(KEffConst()) Kind kind,
  }) = TEff;

  factory Type.tEffRow(TEff t1, Type t2) {
    assert(t2.isEff);
    return TEff(kind: const KEff(), effExt, [t1, t2]);
  }
  factory Type.tEffFlatRow(List<Type> ts) {
    assert(ts.every((t) => t.isEff));
    return TEff(kind: const KEff(), effExt, ts);
  }
  factory Type.tEffVar(String name) => TEff(kind: const KEff(), name, []);

  bool get isEff => kind == const KEff() || kind == const KEffConst();

  @override
  String toString() {
    if (this is TEff) {
      final args = (this as TEff).args.map((e) => e.toString()).join(',');
      if (name == effExt) {
        return '<$args>';
      }
      return '$name<$args>';
    } else if (this is TVar) {
      return name;
    } else if (this is TCon) {
      final args = (this as TCon).args.map((e) => e.toString()).join(',');
      return '$name<$args>';
    }

    return super.toString();
  }
}

extension TEffE on TEff {
  TEff extend(Type t) {
    assert(isEff);
    return Type.tEffRow(this, t) as TEff;
  }

  TEff get flatten {
    if (args.isEmpty) {
      return this;
    }
    final List<Type> newArgs = [];
    bool hasVar = false;
    for (final arg in args) {
      if (arg is TEff && arg.name == effExt) {
        newArgs.addAll(arg.flatten.args);
      } else if (arg is TEff) {
        newArgs.add(arg);
      } else if (arg is TVar) {
        hasVar = true;
      }
    }
    if (hasVar) {
      newArgs.add(Type.tEffVar('e'));
    }
    return Type.tEffFlatRow(newArgs) as TEff;
  }

  bool rowEq(TEff t2) {
    if (!isEff || !t2.isEff) {
      return false;
    }
    switch ((this, t2)) {
      case (TVar(name: const KEff()), TVar(name: const KEff())):
        return true;
      case (TEff(), TVar(name: const KEff())):
      case (TVar(name: const KEff()), TEff()):
        return false;
      case (TEff(args: []), TEff(args: [])):
        return true;
      case (TEff a, TEff b):
        final a1 = a.flatten;
        final b1 = b.flatten;
        return checkFlattenedRows(a1.args, b1.args) &&
            checkFlattenedRows(b1.args, a1.args);
      default:
        return false;
    }
  }

  bool checkFlattenedRows(List<Type> t1, List<Type> t2) {
    if (t1.isEmpty && t2.isEmpty) {
      return true;
    }
    if (t1.isEmpty) {
      return false;
    }
    final a = t1.first;
    for (var b = 0; b < t2.length; b++) {
      final c = t2[b];
      if (a is TEff && c is TEff) {
        if (a.name == c.name) {
          if ('$a' == '$c') {
            final rest = b == t2.length - 1 ? [] : t2.sublist(b + 1);
            return checkFlattenedRows(
              t1.sublist(1),
              [...t2.sublist(0, b), ...rest],
            );
          } else {
            return false;
          }
        }
      } else if (a is TVar && c is TVar) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }
}
