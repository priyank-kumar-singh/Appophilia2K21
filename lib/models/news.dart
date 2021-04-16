import 'package:flutter/foundation.dart';

class NewsItem {
  final String title;
  final String category;
  final String timestamp;
  final String image;
  final String description;
  final String overview;
  final String author;

  NewsItem({
    @required this.title,
    @required this.category,
    @required this.timestamp,
    @required this.image,
    @required this.overview,
    @required this.description,
    @required this.author,
  });
}
