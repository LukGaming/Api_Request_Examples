class ApiResponseException implements Exception {
  final String message;

  ApiResponseException({required this.message});
}

class NotFoundException extends ApiResponseException {
  NotFoundException({required super.message});
}

class UnauthorizedException extends ApiResponseException {
  UnauthorizedException({required super.message});
}

class ServerErrorException extends ApiResponseException {
  ServerErrorException({required super.message});
}
