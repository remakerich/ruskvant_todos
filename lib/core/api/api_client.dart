import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

final apiClient = ApiClient();

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class ApiClient {
  factory ApiClient() {
    final dio = Dio();
    return _ApiClient(dio);
  }

  @GET('todos')
  Future<HttpResponse> getTodos();
}
