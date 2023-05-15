// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryDto _$$_CountryDtoFromJson(Map<String, dynamic> json) =>
    _$_CountryDto(
      name: json['name'] as String,
      code: json['code'] as String,
      currency: json['currency'] as String? ?? 'N/A',
      emoji: json['emoji'] as String,
      emojiU: json['emojiU'] as String,
      languagesList: (json['languages'] as List<dynamic>)
          .map((e) => LanguagesDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      native: json['native'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$_CountryDtoToJson(_$_CountryDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'currency': instance.currency,
      'emoji': instance.emoji,
      'emojiU': instance.emojiU,
      'languages': instance.languagesList,
      'native': instance.native,
      'phone': instance.phone,
    };
