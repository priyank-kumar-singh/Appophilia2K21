import 'package:flutter/foundation.dart';

class NewsItem {
  final String title;
  final String image;
  final String description;
  String content;
  String author;
  final String articleURL;
  String category;
  String timeago;
  DateTime published;
  String updated;

  NewsItem({
    @required this.title,
    @required this.image,
    @required this.description,
    @required this.content,
    @required this.author,
    @required this.articleURL,
    this.category,
    this.timeago,
    this.published,
    this.updated,
  }) {
    updated = '${_months.elementAt(published.month - 1)} ${published.day} ${published.year}, ${published.hour}:${published.minute}';
    timeago = getTimeAgo(published);

    if (category == null) {
      category = 'News API';
    }

    if (author == null) {
      author = 'Not Verified';
    }

    if (content == null) {
      content = '';
    }
  }

  List<String> _months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  String getTimeAgo(DateTime date) {
     var now = DateTime.now();
    if(now.year > date.year){
      return '${now.year - date.year} years ago';
    } else if (now.month > date.month){
      return '${now.month - date.month} minute ago';
    } else if(now.day > date.day){
      return '${now.day - date.day} days ago';
    } else if(now.hour > date.hour){
      return '${now.hour - date.hour} hours ago';
    } else{
      return '${now.minute - date.minute} minutes ago';
    }
  }
}
