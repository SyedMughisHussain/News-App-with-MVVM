import 'dart:convert';

import 'package:news_app/model/news_model.dart';
import 'package:http/http.dart' as http;

class NewsRepository {
  Future<NewsModel> fetchNewsCategory(String categoryName) async {
    String url =
        'https://newsapi.org/v2/everything?q=$categoryName&apiKey=3a02b8c644bd4df29d5e607607d4105a';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return NewsModel.fromJson(body);
    }
    throw Exception('Error');
  }
}
