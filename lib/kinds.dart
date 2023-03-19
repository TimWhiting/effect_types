import 'package:freezed_annotation/freezed_annotation.dart';

part 'kinds.freezed.dart';

@freezed
sealed class Kind with _$Kind {
  const Kind._();
  const factory Kind.kVal() = KVal;
  const factory Kind.kEff() = KEff;
  const factory Kind.kEffConst() = KEffConst;
  const factory Kind.kCon(List<Kind> args, Kind result) = KCon;

  String get string {
    return map(
      kCon: (k) => '(${k.args.map((k) => k.string).join(',')})',
      kEff: (_) => 'e',
      kEffConst: (_) => 'k',
      kVal: (_) => 'v',
    );
  }
}
