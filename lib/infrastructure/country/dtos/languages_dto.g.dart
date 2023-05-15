// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'languages_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguagesDto _$$_LanguagesDtoFromJson(Map<String, dynamic> json) =>
    _$_LanguagesDto(
      code: json['code'] as String,
      name: json['name'] as String,
      native: json['native'] as String? ?? '',
      rtl: json['rtl'] as bool,
    );

Map<String, dynamic> _$$_LanguagesDtoToJson(_$_LanguagesDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'native': instance.native,
      'rtl': instance.rtl,
    };
