import 'package:checks/checks.dart';
import 'package:effect_types/effect_types.dart';
import 'package:effect_types/types.dart';
import 'package:test/test.dart';

extension Trace<T> on T {
  T get trace {
    if (this is Type) {
      print((this as Type).string);
    } else {
      print(this);
    }
    return this;
  }
}

bool rowEq(TEff t1, TEff t2) {
  return t1.rowEq(t2);
}

extension on List<Type> {
  TEff get row => Type.tEffFlatRow(this) as TEff;
}

final eff1 = TEff('eff1', []);
final eff2 = TEff('eff2', []);
TEff eff2p(Type t) => TEff('eff2', [t]);
final effv = Type.tEffVar();

void main() {
  test('Basic Swap', () {
    check(rowEq(
      [eff1, eff2, effv].row,
      [eff2, eff1, effv].row,
    )).isTrue();
  });
  test('Not Equal', () {
    check(rowEq(
      [eff1, eff2, effv].row,
      [eff1, eff1, effv].row,
    )).isFalse();
  });
  test('Complex Swap Eq', () {
    check(rowEq(
      [eff1, eff1, eff2, effv].row,
      [eff1, eff2, eff1, effv].row,
    )).isTrue();
  });
  test('Swap NEq', () {
    check(rowEq(
      [eff2p(boolT), eff2p(intT), effv].row,
      [eff2p(intT), eff2p(boolT).trace, effv].row.trace,
    )).isFalse();
  });
  test('Complex Swap NEq', () {
    check(rowEq(
      [eff1, eff2p(boolT), eff2p(intT), effv].row,
      [eff2p(intT), eff1, eff2p(boolT), effv].row,
    )).isFalse();
  });

  test('Handle, app', () {
    // check();
  });
}
