import 'dart:async';
import 'dart:io';

import 'package:country/domain/core/error/api_failures.dart';
import 'package:country/domain/core/error/exception.dart';
import 'package:country/domain/country/errors/query_exception.dart';
import 'package:flutter/services.dart';

class FailureHandler {
  static ApiFailure handleFailure(Object error) {
    if (error is QueryException) {
      return error.map(
        invalidQuery: (_) =>
            const ApiFailure.queryError(['check query properly']),
        invalidInput: (_) => 
            const ApiFailure.queryError(['check input properly']),
      );
    } else {
      switch (error.runtimeType) {
        case ServerException:
          final message = (error as ServerException).message;
          return ApiFailure.serverError(message);
        case SocketException:
          return const ApiFailure.poorConnection();
        case TimeoutException:
          return const ApiFailure.serverTimeout();
        case PlatformException:
          return ApiFailure.other('${(error as PlatformException).message}');
        case OtherException:
          return ApiFailure.other((error as OtherException).message);

        default:
          return ApiFailure.other(error.toString());
      }
    }
  }
}