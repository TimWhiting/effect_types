abstract final class TypeEnv {
  final _env = <String, Type>{};

  bool checkVar(String x, Type expected) => _env[x] == expected;

  bool checkLam(Type v, Type e, Type expected) {
    throw UnimplementedError();
  }

  bool checkApp(Type e1, Type e2, Type expected) {
    throw UnimplementedError();
  }

  bool checkHandle(List<Type> ops, Type x, Type ret, Type res, Type expected) {
    throw UnimplementedError();
  }

  bool checkLet(Type e1, Type x, Type e2, Type expected) {
    throw UnimplementedError();
  }

  bool checkGen(Type e, Type expected) {
    throw UnimplementedError();
  }

  bool checkInst(Type e, List<Type> subs, Type expected) {
    throw UnimplementedError();
  }
}
