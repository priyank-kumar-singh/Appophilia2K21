import 'package:code_bites/models/news.dart';
import 'package:code_bites/views/news.dart';
import 'package:code_bites/widgets/tap_detector.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader(this.item, {
    Key key,
  }) : super(key: key);

  final NewsItem item;

  @override
  Widget build(BuildContext context) {
    return TapDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => NewsScreen(item)));
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(14.0)),
            child: Image.network(
              item?.image,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  '${item?.title}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
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
              Text(
                '${item?.timeago}  |  ',
                style: Theme.of(context).textTheme.headline5,
              ),
              Expanded(
                child: Text(
                  '${item?.category}',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
