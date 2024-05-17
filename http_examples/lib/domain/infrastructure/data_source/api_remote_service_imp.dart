import 'dart:convert';

import 'package:http_examples/domain/abstract/api_remove_service.dart';
import 'package:http_examples/domain/entities/api_response.dart';
import 'package:http/http.dart' as http;
import 'package:http_examples/domain/functions/api_response_status_code.dart';
import 'package:http_examples/domain/functions/throw_exception_from_status_code.dart';

class ApiRemoteService implements IApiRemoteService {
  final String _apiUrl = "http://localhost:3000";
  @override
  Future<ApiResponse> delete({
    required String endpoint,
    required dynamic identifier,
  }) async {
    var response = await http.delete(Uri.parse("$_apiUrl/$identifier"));
    if (isApiResponseSuccess(response.statusCode)) {
      return ApiResponse(data: response.body);
    }
    throw throwStatusCodeForApiStatusCode(response.statusCode);
  }

  @override
  Future<ApiResponse> get({
    required String endpoint,
    required body,
  }) async {
    print("endpoint: $_apiUrl/$endpoint");
    var response = await http.get(Uri.parse("$_apiUrl/$endpoint"));
    if (isResponseStatusOk(response.statusCode)) {
      return ApiResponse(data: response.body);
    }
    throw throwStatusCodeForApiStatusCode(response.statusCode);
  }

  @override
  Future<ApiResponse> post({
    required String endpoint,
    required body,
  }) async {
    var response = await http.post(
      Uri.parse("$_apiUrl/$endpoint"),
      body: json.encode(
        body,
      ),
    );

    if (isApiResponseSuccess(response.statusCode)) {
      return ApiResponse(data: response.body);
    }
    throw throwStatusCodeForApiStatusCode(response.statusCode);
  }

  @override
  Future<ApiResponse> put({
    required String endpoint,
    required body,
  }) async {
    var response = await http.put(
      Uri.parse("$_apiUrl/$endpoint"),
      body: json.encode(
        body,
      ),
    );

    if (isApiResponseSuccess(response.statusCode)) {
      return ApiResponse(data: response.body);
    }
    throw throwStatusCodeForApiStatusCode(response.statusCode);
  }
}
