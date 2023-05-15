import 'package:dartz/dartz.dart';
import 'package:country/domain/country/entities/country_model.dart';

import '../../../domain/core/error/api_failures.dart';

abstract class ICountryRepository {
  Future<Either<ApiFailure, List<Country>>> getCountriesList();
}