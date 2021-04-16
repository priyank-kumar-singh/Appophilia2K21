import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:code_bites/models/news.dart';

class News {
  List<NewsItem> news  = [];

  Future<void> getNews() async{
    String apiKey = '7145acb82cba4b75ae4dcd0198d6a30c';
    String url = "http://newsapi.org/v2/top-headlines?country=in&excludeDomains=stackoverflow.com&sortBy=publishedAt&language=en&apiKey=$apiKey";

    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){
        if(element['urlToImage'] != null && element['description'] != null){
          NewsItem article = NewsItem(
            title: element['title'],
            author: element['author'],
            image: element['urlToImage'],
            description: element['description'],
            content: element["content"],
            articleURL: element["url"],
            published: DateTime.parse(element['publishedAt']),
          );
          news.add(article);
        }
      });
    }
  }
}
