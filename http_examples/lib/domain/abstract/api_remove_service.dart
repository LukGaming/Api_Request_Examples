import 'package:http_examples/domain/entities/api_response.dart';

abstract class IApiRemoteService {
  Future<ApiResponse> get({
    required String endpoint,
    required dynamic body,
  });

  Future<ApiResponse> post({
    required String endpoint,
    required dynamic body,
  });

  Future<ApiResponse> put({
    required String endpoint,
    required dynamic body,
  });

  Future<ApiResponse> delete({
    required String endpoint,
    required dynamic identifier,
  });
}
