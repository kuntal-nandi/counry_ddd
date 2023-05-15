import 'package:country/application/country/country_bloc.dart';
import 'package:country/domain/core/value/constants.dart';
import 'package:country/infrastructure/core/http/http_service.dart';
import 'package:country/infrastructure/country/data%20source/country_local.dart';
import 'package:country/infrastructure/country/data%20source/country_query.dart';
import 'package:country/infrastructure/country/data%20source/country_remote.dart';
import 'package:country/infrastructure/country/repositories/country_repository.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;
void setUpLocator() {
  locator.registerLazySingleton(() => CountryLocalDataSource());
  locator.registerLazySingleton(() => CountryRemoteDataSource(
    httpService: locator<HttpService>(), 
    countryGqlQuery: locator<CountryGqlQuery>()));
  locator.registerLazySingleton(() => HttpService(httpLink));
  locator.registerLazySingleton(() => CountryGqlQuery());
  locator.registerLazySingleton(() => CountryRepository(
    countryRemoteDataSource: locator<CountryRemoteDataSource>()));
  locator.registerLazySingleton(
    () => CountryBloc(
      repository: locator<CountryRepository>(),
    ),
  );
}
