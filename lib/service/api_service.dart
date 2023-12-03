import 'package:dio/dio.dart';
import 'package:practice/models/model.dart';
import 'package:retrofit/http.dart';


part 'api_service.g.dart';
class Apis{
  static const String album= '/posts/1';
}

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')

abstract class ApiClient {
factory ApiClient(Dio dio,{String baseUrl})=_ApiClient;
@GET(Apis.album)
  Future<Album>getAlbum();
}