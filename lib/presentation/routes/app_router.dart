

import 'package:auto_route/annotations.dart';

import '../country/countries_page.dart';
import '../country/country_details_page.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: CountryView, initial: true),
    AutoRoute(page: CountryDetails),
  ],
)
class $AppRouter {}