part of 'country_bloc.dart';

@freezed
class CountryState with _$CountryState {
  const CountryState._();
  const factory CountryState({
    required List<Country> countriesList,
    required bool isFetching,
    required Option<Either<ApiFailure, dynamic>> failureOrSuccessOption,
  }) = _CountryState;
  factory CountryState.initial() => CountryState(
    countriesList: [],
    isFetching: false,
    failureOrSuccessOption: none(),
  );
}
