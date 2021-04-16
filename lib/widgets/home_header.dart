import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
    @required this.title,
    @required this.timestamp,
    @required this.category,
    @required this.image,
  }) : super(key: key);

  final String title;
  final String timestamp;
  final String category;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
          child: Image.asset(image),
        ),
        SizedBox(
          height: 8.0,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                '$title',
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
              '$timestamp  |  ',
              style: Theme.of(context).textTheme.headline5,
            ),
            Expanded(
              child: Text(
                '$category',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
