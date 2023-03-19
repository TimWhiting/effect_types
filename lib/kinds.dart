import 'package:freezed_annotation/freezed_annotation.dart';

part 'kinds.freezed.dart';

@freezed
sealed class Kind with _$Kind {
  const factory Kind.kVal() = KVal;
  const factory Kind.kEff() = KEff;
  const factory Kind.kEffConst() = KEffConst;
  const factory Kind.kCon(List<Kind> args, Kind result) = KCon;
}
