
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_failures.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const factory ApiFailure.other(String message) = _Other;
  const factory ApiFailure.serverError(String message) = _ServerError;
  const factory ApiFailure.poorConnection() = _PoorConnection;
  const factory ApiFailure.serverTimeout() = _ServerTimeout;
  const factory ApiFailure.queryError(List<String> errors) = _QueryError;
}

extension ApiFailureExt on ApiFailure {
  String get failureMessage {
    final failureMessage = map(
      other: (other) => other.message,
      serverTimeout: (_) => 'Server time out',
      serverError: (serverError) => serverError.message,
      poorConnection: (_) => 'Poor Internet connection',
      queryError: (errors) => errors.errors.toString(),
    );

    return failureMessage;
  }
}
