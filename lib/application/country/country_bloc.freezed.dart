// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String key) filter,
    required TResult Function(List<String> searchLanguages) filterByLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String key)? filter,
    TResult? Function(List<String> searchLanguages)? filterByLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String key)? filter,
    TResult Function(List<String> searchLanguages)? filterByLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Filter value) filter,
    required TResult Function(_FilterByLanguages value) filterByLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Filter value)? filter,
    TResult? Function(_FilterByLanguages value)? filterByLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Filter value)? filter,
    TResult Function(_FilterByLanguages value)? filterByLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryEventCopyWith<$Res> {
  factory $CountryEventCopyWith(
          CountryEvent value, $Res Function(CountryEvent) then) =
      _$CountryEventCopyWithImpl<$Res, CountryEvent>;
}

/// @nodoc
class _$CountryEventCopyWithImpl<$Res, $Val extends CountryEvent>
    implements $CountryEventCopyWith<$Res> {
  _$CountryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'CountryEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String key) filter,
    required TResult Function(List<String> searchLanguages) filterByLanguage,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String key)? filter,
    TResult? Function(List<String> searchLanguages)? filterByLanguage,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String key)? filter,
    TResult Function(List<String> searchLanguages)? filterByLanguage,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Filter value) filter,
    required TResult Function(_FilterByLanguages value) filterByLanguage,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Filter value)? filter,
    TResult? Function(_FilterByLanguages value)? filterByLanguage,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Filter value)? filter,
    TResult Function(_FilterByLanguages value)? filterByLanguage,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CountryEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res, _$_Fetch>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch();

  @override
  String toString() {
    return 'CountryEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String key) filter,
    required TResult Function(List<String> searchLanguages) filterByLanguage,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String key)? filter,
    TResult? Function(List<String> searchLanguages)? filterByLanguage,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String key)? filter,
    TResult Function(List<String> searchLanguages)? filterByLanguage,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Filter value) filter,
    required TResult Function(_FilterByLanguages value) filterByLanguage,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Filter value)? filter,
    TResult? Function(_FilterByLanguages value)? filterByLanguage,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Filter value)? filter,
    TResult Function(_FilterByLanguages value)? filterByLanguage,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements CountryEvent {
  const factory _Fetch() = _$_Fetch;
}

/// @nodoc
abstract class _$$_FilterCopyWith<$Res> {
  factory _$$_FilterCopyWith(_$_Filter value, $Res Function(_$_Filter) then) =
      __$$_FilterCopyWithImpl<$Res>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$_FilterCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res, _$_Filter>
    implements _$$_FilterCopyWith<$Res> {
  __$$_FilterCopyWithImpl(_$_Filter _value, $Res Function(_$_Filter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$_Filter(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Filter implements _Filter {
  const _$_Filter({required this.key});

  @override
  final String key;

  @override
  String toString() {
    return 'CountryEvent.filter(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Filter &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterCopyWith<_$_Filter> get copyWith =>
      __$$_FilterCopyWithImpl<_$_Filter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String key) filter,
    required TResult Function(List<String> searchLanguages) filterByLanguage,
  }) {
    return filter(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String key)? filter,
    TResult? Function(List<String> searchLanguages)? filterByLanguage,
  }) {
    return filter?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String key)? filter,
    TResult Function(List<String> searchLanguages)? filterByLanguage,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Filter value) filter,
    required TResult Function(_FilterByLanguages value) filterByLanguage,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Filter value)? filter,
    TResult? Function(_FilterByLanguages value)? filterByLanguage,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Filter value)? filter,
    TResult Function(_FilterByLanguages value)? filterByLanguage,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class _Filter implements CountryEvent {
  const factory _Filter({required final String key}) = _$_Filter;

  String get key;
  @JsonKey(ignore: true)
  _$$_FilterCopyWith<_$_Filter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FilterByLanguagesCopyWith<$Res> {
  factory _$$_FilterByLanguagesCopyWith(_$_FilterByLanguages value,
          $Res Function(_$_FilterByLanguages) then) =
      __$$_FilterByLanguagesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> searchLanguages});
}

/// @nodoc
class __$$_FilterByLanguagesCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res, _$_FilterByLanguages>
    implements _$$_FilterByLanguagesCopyWith<$Res> {
  __$$_FilterByLanguagesCopyWithImpl(
      _$_FilterByLanguages _value, $Res Function(_$_FilterByLanguages) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchLanguages = null,
  }) {
    return _then(_$_FilterByLanguages(
      searchLanguages: null == searchLanguages
          ? _value._searchLanguages
          : searchLanguages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_FilterByLanguages implements _FilterByLanguages {
  const _$_FilterByLanguages({required final List<String> searchLanguages})
      : _searchLanguages = searchLanguages;

  final List<String> _searchLanguages;
  @override
  List<String> get searchLanguages {
    if (_searchLanguages is EqualUnmodifiableListView) return _searchLanguages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchLanguages);
  }

  @override
  String toString() {
    return 'CountryEvent.filterByLanguage(searchLanguages: $searchLanguages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterByLanguages &&
            const DeepCollectionEquality()
                .equals(other._searchLanguages, _searchLanguages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_searchLanguages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterByLanguagesCopyWith<_$_FilterByLanguages> get copyWith =>
      __$$_FilterByLanguagesCopyWithImpl<_$_FilterByLanguages>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String key) filter,
    required TResult Function(List<String> searchLanguages) filterByLanguage,
  }) {
    return filterByLanguage(searchLanguages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String key)? filter,
    TResult? Function(List<String> searchLanguages)? filterByLanguage,
  }) {
    return filterByLanguage?.call(searchLanguages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String key)? filter,
    TResult Function(List<String> searchLanguages)? filterByLanguage,
    required TResult orElse(),
  }) {
    if (filterByLanguage != null) {
      return filterByLanguage(searchLanguages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Filter value) filter,
    required TResult Function(_FilterByLanguages value) filterByLanguage,
  }) {
    return filterByLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Filter value)? filter,
    TResult? Function(_FilterByLanguages value)? filterByLanguage,
  }) {
    return filterByLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Filter value)? filter,
    TResult Function(_FilterByLanguages value)? filterByLanguage,
    required TResult orElse(),
  }) {
    if (filterByLanguage != null) {
      return filterByLanguage(this);
    }
    return orElse();
  }
}

abstract class _FilterByLanguages implements CountryEvent {
  const factory _FilterByLanguages(
      {required final List<String> searchLanguages}) = _$_FilterByLanguages;

  List<String> get searchLanguages;
  @JsonKey(ignore: true)
  _$$_FilterByLanguagesCopyWith<_$_FilterByLanguages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CountryState {
  List<Country> get countriesList => throw _privateConstructorUsedError;
  List<Country> get filteredCountryList => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  List<String> get languageList => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountryStateCopyWith<CountryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryStateCopyWith<$Res> {
  factory $CountryStateCopyWith(
          CountryState value, $Res Function(CountryState) then) =
      _$CountryStateCopyWithImpl<$Res, CountryState>;
  @useResult
  $Res call(
      {List<Country> countriesList,
      List<Country> filteredCountryList,
      bool isFetching,
      List<String> languageList,
      Option<Either<ApiFailure, dynamic>> failureOrSuccessOption});
}

/// @nodoc
class _$CountryStateCopyWithImpl<$Res, $Val extends CountryState>
    implements $CountryStateCopyWith<$Res> {
  _$CountryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countriesList = null,
    Object? filteredCountryList = null,
    Object? isFetching = null,
    Object? languageList = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      countriesList: null == countriesList
          ? _value.countriesList
          : countriesList // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      filteredCountryList: null == filteredCountryList
          ? _value.filteredCountryList
          : filteredCountryList // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      languageList: null == languageList
          ? _value.languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountryStateCopyWith<$Res>
    implements $CountryStateCopyWith<$Res> {
  factory _$$_CountryStateCopyWith(
          _$_CountryState value, $Res Function(_$_CountryState) then) =
      __$$_CountryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Country> countriesList,
      List<Country> filteredCountryList,
      bool isFetching,
      List<String> languageList,
      Option<Either<ApiFailure, dynamic>> failureOrSuccessOption});
}

/// @nodoc
class __$$_CountryStateCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$_CountryState>
    implements _$$_CountryStateCopyWith<$Res> {
  __$$_CountryStateCopyWithImpl(
      _$_CountryState _value, $Res Function(_$_CountryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countriesList = null,
    Object? filteredCountryList = null,
    Object? isFetching = null,
    Object? languageList = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$_CountryState(
      countriesList: null == countriesList
          ? _value._countriesList
          : countriesList // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      filteredCountryList: null == filteredCountryList
          ? _value._filteredCountryList
          : filteredCountryList // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      languageList: null == languageList
          ? _value._languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_CountryState extends _CountryState {
  const _$_CountryState(
      {required final List<Country> countriesList,
      required final List<Country> filteredCountryList,
      required this.isFetching,
      required final List<String> languageList,
      required this.failureOrSuccessOption})
      : _countriesList = countriesList,
        _filteredCountryList = filteredCountryList,
        _languageList = languageList,
        super._();

  final List<Country> _countriesList;
  @override
  List<Country> get countriesList {
    if (_countriesList is EqualUnmodifiableListView) return _countriesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countriesList);
  }

  final List<Country> _filteredCountryList;
  @override
  List<Country> get filteredCountryList {
    if (_filteredCountryList is EqualUnmodifiableListView)
      return _filteredCountryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredCountryList);
  }

  @override
  final bool isFetching;
  final List<String> _languageList;
  @override
  List<String> get languageList {
    if (_languageList is EqualUnmodifiableListView) return _languageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languageList);
  }

  @override
  final Option<Either<ApiFailure, dynamic>> failureOrSuccessOption;

  @override
  String toString() {
    return 'CountryState(countriesList: $countriesList, filteredCountryList: $filteredCountryList, isFetching: $isFetching, languageList: $languageList, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryState &&
            const DeepCollectionEquality()
                .equals(other._countriesList, _countriesList) &&
            const DeepCollectionEquality()
                .equals(other._filteredCountryList, _filteredCountryList) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            const DeepCollectionEquality()
                .equals(other._languageList, _languageList) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_countriesList),
      const DeepCollectionEquality().hash(_filteredCountryList),
      isFetching,
      const DeepCollectionEquality().hash(_languageList),
      failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryStateCopyWith<_$_CountryState> get copyWith =>
      __$$_CountryStateCopyWithImpl<_$_CountryState>(this, _$identity);
}

abstract class _CountryState extends CountryState {
  const factory _CountryState(
      {required final List<Country> countriesList,
      required final List<Country> filteredCountryList,
      required final bool isFetching,
      required final List<String> languageList,
      required final Option<Either<ApiFailure, dynamic>>
          failureOrSuccessOption}) = _$_CountryState;
  const _CountryState._() : super._();

  @override
  List<Country> get countriesList;
  @override
  List<Country> get filteredCountryList;
  @override
  bool get isFetching;
  @override
  List<String> get languageList;
  @override
  Option<Either<ApiFailure, dynamic>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_CountryStateCopyWith<_$_CountryState> get copyWith =>
      throw _privateConstructorUsedError;
}
