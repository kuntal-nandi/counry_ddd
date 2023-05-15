// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'languages_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguagesDto _$LanguagesDtoFromJson(Map<String, dynamic> json) {
  return _LanguagesDto.fromJson(json);
}

/// @nodoc
mixin _$LanguagesDto {
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'native', defaultValue: '')
  String get native => throw _privateConstructorUsedError;
  @JsonKey(name: 'rtl')
  bool get rtl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguagesDtoCopyWith<LanguagesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguagesDtoCopyWith<$Res> {
  factory $LanguagesDtoCopyWith(
          LanguagesDto value, $Res Function(LanguagesDto) then) =
      _$LanguagesDtoCopyWithImpl<$Res, LanguagesDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'native', defaultValue: '') String native,
      @JsonKey(name: 'rtl') bool rtl});
}

/// @nodoc
class _$LanguagesDtoCopyWithImpl<$Res, $Val extends LanguagesDto>
    implements $LanguagesDtoCopyWith<$Res> {
  _$LanguagesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? native = null,
    Object? rtl = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      native: null == native
          ? _value.native
          : native // ignore: cast_nullable_to_non_nullable
              as String,
      rtl: null == rtl
          ? _value.rtl
          : rtl // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LanguagesDtoCopyWith<$Res>
    implements $LanguagesDtoCopyWith<$Res> {
  factory _$$_LanguagesDtoCopyWith(
          _$_LanguagesDto value, $Res Function(_$_LanguagesDto) then) =
      __$$_LanguagesDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'native', defaultValue: '') String native,
      @JsonKey(name: 'rtl') bool rtl});
}

/// @nodoc
class __$$_LanguagesDtoCopyWithImpl<$Res>
    extends _$LanguagesDtoCopyWithImpl<$Res, _$_LanguagesDto>
    implements _$$_LanguagesDtoCopyWith<$Res> {
  __$$_LanguagesDtoCopyWithImpl(
      _$_LanguagesDto _value, $Res Function(_$_LanguagesDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? native = null,
    Object? rtl = null,
  }) {
    return _then(_$_LanguagesDto(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      native: null == native
          ? _value.native
          : native // ignore: cast_nullable_to_non_nullable
              as String,
      rtl: null == rtl
          ? _value.rtl
          : rtl // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LanguagesDto extends _LanguagesDto {
  _$_LanguagesDto(
      {@JsonKey(name: 'code') required this.code,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'native', defaultValue: '') required this.native,
      @JsonKey(name: 'rtl') required this.rtl})
      : super._();

  factory _$_LanguagesDto.fromJson(Map<String, dynamic> json) =>
      _$$_LanguagesDtoFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'native', defaultValue: '')
  final String native;
  @override
  @JsonKey(name: 'rtl')
  final bool rtl;

  @override
  String toString() {
    return 'LanguagesDto(code: $code, name: $name, native: $native, rtl: $rtl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguagesDto &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.native, native) || other.native == native) &&
            (identical(other.rtl, rtl) || other.rtl == rtl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, native, rtl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguagesDtoCopyWith<_$_LanguagesDto> get copyWith =>
      __$$_LanguagesDtoCopyWithImpl<_$_LanguagesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguagesDtoToJson(
      this,
    );
  }
}

abstract class _LanguagesDto extends LanguagesDto {
  factory _LanguagesDto(
      {@JsonKey(name: 'code') required final String code,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'native', defaultValue: '') required final String native,
      @JsonKey(name: 'rtl') required final bool rtl}) = _$_LanguagesDto;
  _LanguagesDto._() : super._();

  factory _LanguagesDto.fromJson(Map<String, dynamic> json) =
      _$_LanguagesDto.fromJson;

  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'native', defaultValue: '')
  String get native;
  @override
  @JsonKey(name: 'rtl')
  bool get rtl;
  @override
  @JsonKey(ignore: true)
  _$$_LanguagesDtoCopyWith<_$_LanguagesDto> get copyWith =>
      throw _privateConstructorUsedError;
}
