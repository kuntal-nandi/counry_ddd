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
            ),
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
              emit(
                state.copyWith(
                  countriesList: countryList,
                  failureOrSuccessOption: none(),
                  isFetching: false,
                ),
              );
            },
          );
        },
        filter: (_Filter e) async {
          if (state.isFetching == false) {
            emit(
              state.copyWith(
                isFetching: true,
                countriesList: [],
                failureOrSuccessOption: none(),
              ),
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
                if (countryList.isNotEmpty) {
                  List<Country> filteredList = [];
                  if (e.key.isNotEmpty && e.key != '') {
                    for (int i = 0; i < countryList.length; i++) {
                      if (countryList[i]
                          .name
                          .toLowerCase()
                          .contains(e.key.trim().toLowerCase())) {
                        filteredList.add(countryList[i]);
                      }
                    }
                    emit(
                      state.copyWith(
                        countriesList: filteredList,
                        failureOrSuccessOption: none(),
                        isFetching: false,
                      ),
                    );
                  } else {
                    emit(
                      state.copyWith(
                        countriesList: countryList,
                        failureOrSuccessOption: none(),
                        isFetching: false,
                      ),
                    );
                  }
                }
              },
            );
          }
        });
  }
}
