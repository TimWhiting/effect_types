import 'package:checks/checks.dart';
import 'package:effect_types/effect_types.dart';
import 'package:test/test.dart';

extension Trace<T> on T {
  T get trace {
    print(this);
    return this;
  }
}

void main() {
  test('Basic Swap', () {
    check(rowEq(
      row(eff1, row(eff2, effv)).trace,
      row(eff2, row(eff1, effv)).trace,
    )).isTrue();
  });
  test('Not Equal', () {
    check(rowEq(
      row(eff1, row(eff1, effv)),
      row(eff2, row(eff1, effv)),
    )).isFalse();
  });
  test('Complex Swap Eq', () {
    check(rowEq(
      row(eff1, row(eff1, row(eff2, effv))),
      row(eff1, row(eff2, row(eff1, effv))),
    )).isTrue();
  });
  test('Swap NEq', () {
    check(rowEq(
      row(eff2p(boolT), row(eff2p(intT), effv)),
      row(eff2p(intT), row(eff2p(boolT), effv)),
    )).isFalse();
  });
  test('Complex Swap NEq', () {
    check(rowEq(
      row(eff1, row(eff2p(boolT), row(eff2p(intT), effv))),
      row(eff2p(intT), row(eff1, row(eff2p(boolT), effv))),
    )).isFalse();
  });
}
