import 'package:country/infrastructure/core/http/http_service.dart';
import 'package:country/infrastructure/country/data%20source/country_query.dart';

import '../../../domain/core/error/exception.dart';
import '../../../domain/country/entities/country_model.dart';
import '../dtos/country_dto.dart';

class CountryRemoteDataSource {
  final HttpService httpService;
  final CountryGqlQuery countryGqlQuery;
  CountryRemoteDataSource(
      {required this.httpService, required this.countryGqlQuery});

  Future<List<Country>> getCountriesList() async {
    final queryData = countryGqlQuery.countryQuery();

    final res = await httpService.getQuery(query: queryData);

    _getCountriesListExceptionChecker(res: res);
    final finalData = res.data!['countries'];

    return List.from(finalData).map((e) => CountryDto.fromJson(e).toDomain())
        .toList();
  }

  void _getCountriesListExceptionChecker({
    required dynamic res,
  }) {
    if (res.data['errors'] != null && res.data['errors'].isNotEmpty) {
      throw OtherException(message: res.data['errors'][0]['message']);
    }
  }
}
