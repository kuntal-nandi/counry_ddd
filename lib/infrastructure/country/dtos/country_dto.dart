// ignore_for_file: invalid_annotation_target

import 'package:country/domain/country/entities/country_model.dart';
import 'package:country/domain/country/entities/languages_model.dart';
import 'package:country/infrastructure/country/dtos/languages_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'country_dto.freezed.dart';
part 'country_dto.g.dart';

@freezed
class CountryDto with _$CountryDto {
  const CountryDto._();
  factory CountryDto({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'currency',defaultValue: 'N/A')  String? currency,
    @JsonKey(name: 'emoji') required String emoji,
    @JsonKey(name: 'emojiU') required String emojiU,
    @JsonKey(name: 'languages') required List<LanguagesDto> languagesList,
    @JsonKey(name: 'native') required String native,
    @JsonKey(name: 'phone') required String phone,
  }) = _CountryDto;

  factory CountryDto.fromDomain(Country country) {
    return CountryDto(
        name: country.name,
        code: country.code,
        currency: country.currency,
        emoji: country.emoji,
        emojiU: country.emojiU,
        languagesList: country.languages.map((e) => LanguagesDto.fromDomain(e)).toList(),
        native: country.native,
        phone: country.phone);
  }

  Country toDomain() {
    return Country(
        name: name,
        code: code,
        currency: currency!,
        emoji: emoji,
        emojiU: emojiU,
        native: native,
        languages: languagesList.isNotEmpty
                   ? languagesList.map((e) => e.toDomain()).toList()
                   : <Languages>[],
        phone: phone);
  }

  factory CountryDto.fromJson(Map<String, dynamic> json) =>
      _$CountryDtoFromJson(json);
}


