import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_exception.freezed.dart';

@freezed
class QueryException with _$QueryException {
  const factory QueryException.invalidQuery() =
      _InvalidQuery;
  const factory QueryException.invalidInput() = _InvalidInput;
}