import 'package:dio/dio.dart';
import 'package:news_app/pages/component/news_box.dart';

class NewsRequest {
  final dio = Dio();

  NewsRequest();

  Future<List<NewsCat>> getNews(String searchWord) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/everything?language=ar&q=$searchWord&apiKey=aef51151d5f0430889312036a9ae841e#');

      Map<String, dynamic> jasonData = response.data;

      List<dynamic> articles = jasonData['articles'];
      List<NewsCat> articleList = [];

      for (var article in articles) {
      
      
        NewsCat articleModel = NewsCat(
            imge: article['urlToImage'],
            htext: article['title'],
            subtext: article['description'],
            newsUrl: article['url']);
      
      
        articleList.add(articleModel);
      }

      return articleList;
    } catch (e) {}
    return [];
  }
}
