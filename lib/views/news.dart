import 'package:code_bites/models/news.dart';
import 'package:code_bites/themes/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewsScreen extends StatelessWidget {
  NewsScreen(this.item, {
    Key key,
  }) : super(key: key);

  final NewsItem item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${item?.category}',
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.font, size: 20.0),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.bookmark_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.share, size: 20.0),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          _buildBody(context),
          _buildCommentBox(context),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
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
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '${item?.description}',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(14.0)),
                child: Image.network(
                  item?.image,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                'By ${item?.author}',
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Published: ${item?.updated}',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'Updated: ${item?.updated}',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '${item?.content}',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCommentBox(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(14.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Write a comment...',
                hintMaxLines: 1,
              ),
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SizedBox(
            width: 8.0,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(textFieldBorderRadius + 4.0)),
              color: Colors.redAccent,
            ),
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              icon: Icon(
                FontAwesomeIcons.telegramPlane,
                color: Colors.white,
                size: 32.0,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
