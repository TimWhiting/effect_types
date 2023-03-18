abstract base class Kind {
  const Kind();
}

final class KVal extends Kind {
  @override
  String toString() {
    return '*';
  }
}

final class KEff extends Kind {
  const KEff();
  @override
  String toString() {
    return 'e';
  }
}

final class KEffConst extends Kind {
  const KEffConst();
  @override
  String toString() {
    return 'k';
  }
}

final class KCon extends Kind {
  final List<Kind> args;
  final Kind result;

  KCon(this.args, this.result);
}

abstract base class Type {
  Kind get kind;
  const Type();
}

final class TVar extends Type {
  final String name;
  @override
  final Kind kind;
  const TVar(this.name, this.kind);

  @override
  String toString() {
    return name;
  }
}

final class TCon extends Type {
  final String name;
  final List<Type> args;
  @override
  final Kind kind;

  TCon(this.name, this.args, this.kind);
  @override
  String toString() {
    final args = this.args.map((e) => e.toString()).join(', ');
    return '$name($args)';
  }
}

final class TEff extends TCon {
  TEff(String name, List<Type> args)
      : super(name, args, name == '<|>' ? const KEff() : const KEffConst());
  @override
  String toString() {
    final args = this.args.map((e) => e.toString()).join(',');
    if (name == '<|>') {
      return '<$args>';
    }
    return '$name<$args>';
  }
}

final class TEffVar extends TVar {
  const TEffVar(String name) : super(name, const KEff());
  @override
  String toString() {
    return name;
  }
}

final class TFun extends TCon {
  TFun(Type arg, Type eff, Type result)
      : super('->', [arg, eff, result], KVal());
}

final valueK = KVal();
final funK = KCon([KVal(), KEff(), KVal()], KVal());
final eEffK = KEff();
final eEff = TVar('<>', eEffK);
final exEffK = KCon([KEffConst(), KEff()], KEff());

extension on Type {
  bool get isEff => kind == const KEff();
}

extension on TEff {
  TEff get flatten {
    if (args.isEmpty) {
      return this;
    }
    final List<Type> newArgs = [];
    bool hasVar = false;
    for (final arg in args) {
      if (arg is TEff && arg.name == '<|>') {
        newArgs.addAll(arg.flatten.args);
      } else if (arg is TEff) {
        newArgs.add(arg);
      } else if (arg is TEffVar) {
        hasVar = true;
      }
    }
    if (hasVar) {
      newArgs.add(const TEffVar('e'));
    }
    return TEff(name, newArgs);
  }
}

TEff row(TEff t1, Type t2) {
  assert(t2.isEff);
  return TEff('<|>', [t1, t2]);
}

final eff1 = TEff('eff1', []);
final eff2 = TEff('eff2', []);
TEff eff2p(Type t) => TEff('eff2', [t]);
final boolT = TCon('bool', [], valueK);
final intT = TCon('int', [], valueK);
final effv = const TEffVar('e');

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
    } else if (a is TEffVar && c is TEffVar) {
      return true;
    } else {
      return false;
    }
  }
  return false;
}

bool rowEq(Type t1, Type t2) {
  if (!t1.isEff || !t2.isEff) {
    return false;
  }
  switch ((t1, t2)) {
    case (TEffVar(), TEffVar()):
      return true;
    case (TEff(), TEffVar()):
    case (TEffVar(), TEff()):
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
