import 'package:freezed_annotation/freezed_annotation.dart';
part 'languages_model.freezed.dart';

@freezed
class Languages with _$Languages {
  const Languages._();
  factory Languages({
    required String code,
    required String name,
    required String native,
    required bool rtl,
  }) = _Languages;

  factory Languages.empty() =>
      Languages(code: '', name: '', native: '', rtl: false);
  
  @override
  String toString() => 'Name:$name Code:$code Native:$native RightToLeft: $rtl';
}
