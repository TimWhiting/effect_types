library effect_types;

part 'effects.dart';
part 'kinds.dart';
part 'types.dart';

final valueK = KVal();
final funK = KCon([KVal(), KEff(), KVal()], KVal());
final exEffK = KCon([KEffConst(), KEff()], KEff());
final boolT = TCon('bool', [], valueK);
final intT = TCon('int', [], valueK);

extension on Type {
  bool get isEff => kind == const KEff() || kind == const KEffConst();
}
