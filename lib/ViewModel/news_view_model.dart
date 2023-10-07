import 'package:news_app/Repository/news_repository.dart';
import 'package:news_app/model/news_model.dart';

class NewsViewModel {
  NewsRepository newsRepository = NewsRepository();

  Future<NewsModel> fetchNewsCategoryApi(String categoryName) {
    final response = newsRepository.fetchNewsCategory(categoryName);
    return response;
  }
}
