// ignore_for_file: invalid_annotation_target

import 'package:country/domain/country/entities/languages_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'languages_dto.freezed.dart';
part 'languages_dto.g.dart';

@freezed
class LanguagesDto with _$LanguagesDto {
  const LanguagesDto._();
  factory LanguagesDto({
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'native', defaultValue: '') required String native,
    @JsonKey(name: 'rtl') required bool rtl,
  }) = _LanguagesDto;

  factory LanguagesDto.fromDomain(Languages languages) {
    return LanguagesDto(
        code: languages.code,
        name: languages.name,
        native: languages.native,
        rtl: languages.rtl);
  }

  Languages toDomain() {
    return Languages(
        code: code,
        name: name,
        native: native,
        rtl: rtl);
  }
  factory LanguagesDto.fromJson(Map<String, dynamic> json) =>
      _$LanguagesDtoFromJson(json);
}
