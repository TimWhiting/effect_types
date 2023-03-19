import 'package:effect_types/types.dart';

import 'kinds.dart';

final valueK = KVal();
final funK = KCon([KVal(), KEff(), KVal()], KVal());
final exEffK = KCon([KEffConst(), KEff()], KEff());
final boolT = TCon(valueK, 'bool', []);
final intT = TCon(valueK, 'int', []);
