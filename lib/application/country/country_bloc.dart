import 'dart:async';
import 'package:country/domain/country/entities/country_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/core/error/api_failures.dart';
import '../../domain/country/repository/i_country_repository.dart';
part 'country_bloc.freezed.dart';
part 'country_event.dart';
part 'country_state.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  final ICountryRepository repository;
  CountryBloc({
    required this.repository,
  }) : super(CountryState.initial()) {
    on<CountryEvent>(_onEvent);
  }

  Future<void> _onEvent(
    CountryEvent event,
    Emitter<CountryState> emit,
  ) async {
    await event.map(
        initialized: (_) async => emit(
              CountryState.initial(),
            ),
        fetch: (_Fetch e) async {
          emit(
            state.copyWith(
                isFetching: true,
                countriesList: [],
                failureOrSuccessOption: none(),
                filteredCountryList: [],
                languageList: []),
          );
          final failureOrSuccess = await repository.getCountriesList();
          await failureOrSuccess.fold(
            (failure) async => emit(
              state.copyWith(
                failureOrSuccessOption: optionOf(failureOrSuccess),
                isFetching: false,
              ),
            ),
            (countryList) async {
              emit(state.copyWith(
                countriesList: countryList,
                filteredCountryList: countryList,
                failureOrSuccessOption: none(),
                isFetching: false,
                languageList: getAllLanguages(countryList),
              ));
            },
          );
        },
        filter: (_Filter e) async {
          if (state.isFetching == false) {
            emit(
              state.copyWith(
                isFetching: true,
                filteredCountryList: [],
                failureOrSuccessOption: none(),
              ),
            );
            if (e.key.isNotEmpty && e.key != '') {
              List<Country> filteredList = [];
              filteredList = state.countriesList
                  .where((element) =>
                      element.name.toLowerCase().contains(e.key.toLowerCase()))
                  .toList();
              emit(
                state.copyWith(
                  filteredCountryList: filteredList,
                  failureOrSuccessOption: none(),
                  isFetching: false,
                ),
              );
            }
            else{
              emit(
                state.copyWith(
                  filteredCountryList: state.countriesList,
                  failureOrSuccessOption: none(),
                  isFetching: false,
                ),
              );
            }
          }
        }, filterByLanguage: (_FilterByLanguages e) {
          if(state.isFetching==false){
            emit(
              state.copyWith(
                isFetching: true,
              ),
            );
            if(e.searchLanguages.isNotEmpty){
              List<Country> filteredList = [];
              for(var element in state.countriesList){
                for(var lan in element.languages){
                  if(e.searchLanguages.contains(lan.name)){
                    filteredList.add(element);
                  }
                }
              }
              emit(
                state.copyWith(
                  filteredCountryList: filteredList,
                  isFetching: false
                ),
              );
            }
            else{
              emit(
                state.copyWith(
                    isFetching: false
                ),
              );
            }
          }

    });
  }
}

List<String> getAllLanguages(List<Country> countries) {
  List<String> allL = [];
  if (countries.isNotEmpty) {
    for (var element in countries) {
      for (var element in element.languages) {
        allL.add(element.name);
      }
    }
    Set<String> set = Set<String>.from(allL);
    List<String> allLanguages = List<String>.from(set);
    return allLanguages;
  } else {
    return allL;
  }
}
