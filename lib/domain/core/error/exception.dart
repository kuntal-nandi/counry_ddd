class ServerException implements Exception {
  final int statusCode;
  final String message;
  ServerException({this.statusCode = 0, this.message = ''});
}

class OtherException implements Exception {
  final String message;
  OtherException({this.message = ''});
}