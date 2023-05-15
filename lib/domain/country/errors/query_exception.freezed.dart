// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QueryException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidQuery,
    required TResult Function() invalidInput,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidQuery,
    TResult? Function()? invalidInput,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidQuery,
    TResult Function()? invalidInput,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidQuery value) invalidQuery,
    required TResult Function(_InvalidInput value) invalidInput,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidQuery value)? invalidQuery,
    TResult? Function(_InvalidInput value)? invalidInput,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidQuery value)? invalidQuery,
    TResult Function(_InvalidInput value)? invalidInput,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryExceptionCopyWith<$Res> {
  factory $QueryExceptionCopyWith(
          QueryException value, $Res Function(QueryException) then) =
      _$QueryExceptionCopyWithImpl<$Res, QueryException>;
}

/// @nodoc
class _$QueryExceptionCopyWithImpl<$Res, $Val extends QueryException>
    implements $QueryExceptionCopyWith<$Res> {
  _$QueryExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InvalidQueryCopyWith<$Res> {
  factory _$$_InvalidQueryCopyWith(
          _$_InvalidQuery value, $Res Function(_$_InvalidQuery) then) =
      __$$_InvalidQueryCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidQueryCopyWithImpl<$Res>
    extends _$QueryExceptionCopyWithImpl<$Res, _$_InvalidQuery>
    implements _$$_InvalidQueryCopyWith<$Res> {
  __$$_InvalidQueryCopyWithImpl(
      _$_InvalidQuery _value, $Res Function(_$_InvalidQuery) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InvalidQuery implements _InvalidQuery {
  const _$_InvalidQuery();

  @override
  String toString() {
    return 'QueryException.invalidQuery()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidQuery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidQuery,
    required TResult Function() invalidInput,
  }) {
    return invalidQuery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidQuery,
    TResult? Function()? invalidInput,
  }) {
    return invalidQuery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidQuery,
    TResult Function()? invalidInput,
    required TResult orElse(),
  }) {
    if (invalidQuery != null) {
      return invalidQuery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidQuery value) invalidQuery,
    required TResult Function(_InvalidInput value) invalidInput,
  }) {
    return invalidQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidQuery value)? invalidQuery,
    TResult? Function(_InvalidInput value)? invalidInput,
  }) {
    return invalidQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidQuery value)? invalidQuery,
    TResult Function(_InvalidInput value)? invalidInput,
    required TResult orElse(),
  }) {
    if (invalidQuery != null) {
      return invalidQuery(this);
    }
    return orElse();
  }
}

abstract class _InvalidQuery implements QueryException {
  const factory _InvalidQuery() = _$_InvalidQuery;
}

/// @nodoc
abstract class _$$_InvalidInputCopyWith<$Res> {
  factory _$$_InvalidInputCopyWith(
          _$_InvalidInput value, $Res Function(_$_InvalidInput) then) =
      __$$_InvalidInputCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidInputCopyWithImpl<$Res>
    extends _$QueryExceptionCopyWithImpl<$Res, _$_InvalidInput>
    implements _$$_InvalidInputCopyWith<$Res> {
  __$$_InvalidInputCopyWithImpl(
      _$_InvalidInput _value, $Res Function(_$_InvalidInput) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InvalidInput implements _InvalidInput {
  const _$_InvalidInput();

  @override
  String toString() {
    return 'QueryException.invalidInput()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidInput);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidQuery,
    required TResult Function() invalidInput,
  }) {
    return invalidInput();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidQuery,
    TResult? Function()? invalidInput,
  }) {
    return invalidInput?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidQuery,
    TResult Function()? invalidInput,
    required TResult orElse(),
  }) {
    if (invalidInput != null) {
      return invalidInput();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidQuery value) invalidQuery,
    required TResult Function(_InvalidInput value) invalidInput,
  }) {
    return invalidInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidQuery value)? invalidQuery,
    TResult? Function(_InvalidInput value)? invalidInput,
  }) {
    return invalidInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidQuery value)? invalidQuery,
    TResult Function(_InvalidInput value)? invalidInput,
    required TResult orElse(),
  }) {
    if (invalidInput != null) {
      return invalidInput(this);
    }
    return orElse();
  }
}

abstract class _InvalidInput implements QueryException {
  const factory _InvalidInput() = _$_InvalidInput;
}
