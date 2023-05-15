import 'package:dartz/dartz.dart';

import 'package:country/domain/country/entities/country_model.dart';

import 'package:country/domain/core/error/api_failures.dart';

import '../../../domain/core/error/failure_handler.dart';
import '../../../domain/country/repository/i_country_repository.dart';
import '../data source/country_remote.dart';

class CountryRepository implements ICountryRepository {
  CountryRemoteDataSource countryRemoteDataSource;
  CountryRepository({required this.countryRemoteDataSource});
  @override
  Future<Either<ApiFailure, List<Country>>> getCountriesList() async{
    try {
      final countriesList = await countryRemoteDataSource.getCountriesList();
      return Right(countriesList);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
