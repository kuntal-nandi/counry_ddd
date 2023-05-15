

import 'dart:convert';

import 'package:country/domain/country/entities/country_model.dart';
import 'package:country/infrastructure/country/dtos/country_dto.dart';
import 'package:flutter/services.dart';

class CountryLocalDataSource {
  CountryLocalDataSource();

  Future<List<Country>> getcountriesList() async {
    final data = json.decode(
      await rootBundle.loadString('assets/json/countries.json'),
    );

    final finalData = data['countries'];

    return List.from(finalData)
        .map((e) => CountryDto.fromJson(e).toDomain())
        .toList();
  }
}