part of 'country_bloc.dart';

@freezed
class CountryState with _$CountryState {
  const CountryState._();
  const factory CountryState({
    required List<Country> countriesList,
    required List<Country> filteredCountryList,
    required bool isFetching,
    required List<String> languageList,
    required Option<Either<ApiFailure, dynamic>> failureOrSuccessOption,
  }) = _CountryState;
  factory CountryState.initial() => CountryState(
    countriesList: [],
    filteredCountryList: [],
    isFetching: false,
    failureOrSuccessOption: none(), 
    languageList: [],
  );
}
