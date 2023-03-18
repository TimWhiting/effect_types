part of effect_types;

sealed class Kind {
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
