import 'package:dio/dio.dart';
import '../networks/networks.dart';

class NewsService {

  final Dio _dio = Dio(
      BaseOptions(
          baseUrl: ApiUrl.baseUrl,
          responseType: ResponseType.json
      )
  );

  fetchNews() async {

    var response = await _dio.get('v2/top-headlines?sources=techcrunch&apiKey=defec8594a694a8191d9c50f3f414246');

    return response.data;

  }

  fetchNewsBySearching(String title) async {

    var response = await _dio.get('v2/everything?q='+title+'&apiKey=defec8594a694a8191d9c50f3f414246');

    return response.data;
  }

}