import 'package:flutter_test/flutter_test.dart';
import 'package:http_examples/domain/entities/api_response.dart';
import 'package:http_examples/domain/exceptions/api_response_exceptions.dart';
import 'package:http_examples/domain/infrastructure/data_source/api_remote_service_imp.dart';

void main() {
  final apiService = ApiRemoteService();
  group("Tests for get method for api service", () {
    test("Should get a response with no errors", () async {
      ApiResponse response = await apiService.get(endpoint: "todos", body: "");
    });

    test("Should return a error for a not found endpoint", () async {
      expectLater(apiService.get(endpoint: "todossss", body: ""),
          throwsA(isA<NotFoundException>()));
    });
  });
}
