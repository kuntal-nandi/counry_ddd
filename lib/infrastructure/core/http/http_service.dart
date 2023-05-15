import 'dart:developer';

import 'package:graphql_flutter/graphql_flutter.dart';

class HttpService {
  final HttpLink _httpLink;
  HttpService(this._httpLink);

  late GraphQLClient _graphQLClient;

  Future<QueryResult> getQuery({
    required String query,
  }) async {
    try {
      _graphQLClient = GraphQLClient(
        cache: GraphQLCache(store: InMemoryStore()),
        link: _httpLink,
      );

      final QueryResult<Object?> qResult =
          await _graphQLClient.query(QueryOptions(
        document: gql(query),
      ));
      if (qResult.hasException) {
        final String errMessage = 'Error in Query:\n $query';
        log(errMessage);
        throw qResult.exception!.graphqlErrors.toString();
      }
      return qResult;
    } catch (e) {
      rethrow; 
    }
  }
}
