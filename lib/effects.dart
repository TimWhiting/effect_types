part of effect_types;

const effExt = '<|>';

final class TEff extends TCon {
  TEff(String name, List<Type> args)
      : assert(name != effExt, 'Use TEff.row instead'),
        super(name, args, const KEffConst());

  TEff.row(TEff t1, Type t2)
      : assert(t2.isEff),
        super(effExt, [t1, t2], const KEff());

  TEff.flatRow(List<Type> ts)
      : assert(ts.every((t) => t.isEff)),
        super(effExt, ts, const KEff());

  TEff extend(Type t) {
    assert(t.isEff);
    return TEff.row(this, t);
  }

  @override
  String toString() {
    final args = this.args.map((e) => e.toString()).join(',');
    if (name == effExt) {
      return '<$args>';
    }
    return '$name<$args>';
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
      } else if (arg is TEffVar) {
        hasVar = true;
      }
    }
    if (hasVar) {
      newArgs.add(const TEffVar('e'));
    }
    return TEff.flatRow(newArgs);
  }

  bool rowEq(TEff t2) {
    if (!isEff || !t2.isEff) {
      return false;
    }
    switch ((this, t2)) {
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
}

final class TEffVar extends TVar {
  const TEffVar(String name) : super(name, const KEff());
  @override
  String toString() {
    return name;
  }
}
