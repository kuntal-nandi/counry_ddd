// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'languages_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Languages {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get native => throw _privateConstructorUsedError;
  bool get rtl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguagesCopyWith<Languages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguagesCopyWith<$Res> {
  factory $LanguagesCopyWith(Languages value, $Res Function(Languages) then) =
      _$LanguagesCopyWithImpl<$Res, Languages>;
  @useResult
  $Res call({String code, String name, String native, bool rtl});
}

/// @nodoc
class _$LanguagesCopyWithImpl<$Res, $Val extends Languages>
    implements $LanguagesCopyWith<$Res> {
  _$LanguagesCopyWithImpl(this._value, this._then);

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
abstract class _$$_LanguagesCopyWith<$Res> implements $LanguagesCopyWith<$Res> {
  factory _$$_LanguagesCopyWith(
          _$_Languages value, $Res Function(_$_Languages) then) =
      __$$_LanguagesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name, String native, bool rtl});
}

/// @nodoc
class __$$_LanguagesCopyWithImpl<$Res>
    extends _$LanguagesCopyWithImpl<$Res, _$_Languages>
    implements _$$_LanguagesCopyWith<$Res> {
  __$$_LanguagesCopyWithImpl(
      _$_Languages _value, $Res Function(_$_Languages) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? native = null,
    Object? rtl = null,
  }) {
    return _then(_$_Languages(
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

class _$_Languages extends _Languages {
  _$_Languages(
      {required this.code,
      required this.name,
      required this.native,
      required this.rtl})
      : super._();

  @override
  final String code;
  @override
  final String name;
  @override
  final String native;
  @override
  final bool rtl;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Languages &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.native, native) || other.native == native) &&
            (identical(other.rtl, rtl) || other.rtl == rtl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, name, native, rtl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguagesCopyWith<_$_Languages> get copyWith =>
      __$$_LanguagesCopyWithImpl<_$_Languages>(this, _$identity);
}

abstract class _Languages extends Languages {
  factory _Languages(
      {required final String code,
      required final String name,
      required final String native,
      required final bool rtl}) = _$_Languages;
  _Languages._() : super._();

  @override
  String get code;
  @override
  String get name;
  @override
  String get native;
  @override
  bool get rtl;
  @override
  @JsonKey(ignore: true)
  _$$_LanguagesCopyWith<_$_Languages> get copyWith =>
      throw _privateConstructorUsedError;
}
