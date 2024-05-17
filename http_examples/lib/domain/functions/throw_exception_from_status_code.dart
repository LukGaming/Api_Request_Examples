import 'package:http_examples/domain/exceptions/api_response_exceptions.dart';
import 'package:http_examples/domain/functions/api_response_status_code.dart';

Exception throwStatusCodeForApiStatusCode(int status) {
  if (isApiResponseUnauthorized(status)) {
    return UnauthorizedException(message: 'Unauthorized access');
  } else if (isApiResponseNotFound(status)) {
    return NotFoundException(message: 'Resource not found');
  } else if (isServerError(status)) {
    return ServerErrorException(message: 'Server error');
  } else {
    return ApiResponseException(message: 'Unexpected error: $status');
  }
}
