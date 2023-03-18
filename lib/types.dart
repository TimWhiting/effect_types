part of effect_types;

sealed class Type {
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
}

final class TFun extends TCon {
  TFun(Type arg, Type eff, Type result)
      : super('->', [arg, eff, result], KVal());
}
