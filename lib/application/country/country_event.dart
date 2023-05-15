part of 'country_bloc.dart';

@freezed
class CountryEvent with _$CountryEvent {
  const factory CountryEvent.initialized() = _Initialized;
  const factory CountryEvent.fetch() = _Fetch;
  const factory CountryEvent.filter({required String key}) = _Filter;
}
