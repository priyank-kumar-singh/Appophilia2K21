import 'package:code_bites/models/news.dart';
import 'package:code_bites/themes/constants.dart';
import 'package:code_bites/views/news.dart';
import 'package:code_bites/widgets/tap_detector.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard(this.item, {
    Key key,
  }) : super(key: key);

  final NewsItem item;

  @override
  Widget build(BuildContext context) {
    return TapDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => NewsScreen(item)));
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.only(top: 16.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).inputDecorationTheme.border.borderSide.color,
          ),
          borderRadius: BorderRadius.all(Radius.circular(textFieldBorderRadius)),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(14.0)),
                    child: Image.network(
                      item?.image,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${item?.title}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '${item?.description}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline4,
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
            ),
          ],
        ),
      ),
    );
  }
}
