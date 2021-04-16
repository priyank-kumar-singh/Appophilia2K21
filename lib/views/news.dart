import 'package:code_bites/models/news.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({
    Key key,
    this.item,
  }) : super(key: key);

  final NewsItem item;

  @override
  Widget build(BuildContext context) {
    final NewsItem item = NewsItem(
      title: 'Jacob Blake: Trump Visits Kenosha To Back Polices...',
      category: 'Politics',
      timestamp: '20 min ago',
      image: 'images/trump.jpg',
      description: 'das',
      overview: 'asd',
      author: 'Priyank',
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${item?.category}',
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.font),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.bookmark_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '${item?.title}',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '${item?.overview}',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 8.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(14.0)),
                child: Image.asset(
                  item?.image,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
