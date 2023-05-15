// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:country/domain/country/entities/country_model.dart' as _i5;
import 'package:country/presentation/country/countries_page.dart' as _i1;
import 'package:country/presentation/country/country_details_page.dart' as _i2;
import 'package:flutter/material.dart' as _i4;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    CountryViewRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.CountryView(),
      );
    },
    CountryDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<CountryDetailsRouteArgs>();
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.CountryDetails(
          key: args.key,
          country: args.country,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          CountryViewRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          CountryDetailsRoute.name,
          path: '/country-details',
        ),
      ];
}

/// generated route for
/// [_i1.CountryView]
class CountryViewRoute extends _i3.PageRouteInfo<void> {
  const CountryViewRoute()
      : super(
          CountryViewRoute.name,
          path: '/',
        );

  static const String name = 'CountryViewRoute';
}

/// generated route for
/// [_i2.CountryDetails]
class CountryDetailsRoute extends _i3.PageRouteInfo<CountryDetailsRouteArgs> {
  CountryDetailsRoute({
    _i4.Key? key,
    required _i5.Country country,
  }) : super(
          CountryDetailsRoute.name,
          path: '/country-details',
          args: CountryDetailsRouteArgs(
            key: key,
            country: country,
          ),
        );

  static const String name = 'CountryDetailsRoute';
}

class CountryDetailsRouteArgs {
  const CountryDetailsRouteArgs({
    this.key,
    required this.country,
  });

  final _i4.Key? key;

  final _i5.Country country;

  @override
  String toString() {
    return 'CountryDetailsRouteArgs{key: $key, country: $country}';
  }
}
