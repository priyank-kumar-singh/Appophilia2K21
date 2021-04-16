import 'package:code_bites/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String _appbarTitle = 'Daily News';
  final Map<String, IconData> _bottomNavigationItemsLable = {
    'Home': Icons.home,
    'Search': Icons.search,
    'Bookmark': Icons.bookmark_outline,
    'Account': Icons.person_outline_rounded,
  };

  void handleBottomBarTap(int index) {

  }

  final String headerTitle = 'Jacob Blake: Trump Visits Kenosha To Back Polices asdasd asd asdas...';
  final String headerTimestamp = '20 min ago';
  final String headerCategory = 'Politics';
  final String headerImage = 'images/trump.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _appbarTitle,
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 14.0),
        child: Column(
          children: [
            HomeHeader(
              title: headerTitle,
              timestamp: headerTimestamp,
              category: headerCategory,
              image: headerImage,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: handleBottomBarTap,
        items: _bottomNavigationItemsLable.entries.map((entry) {
          return BottomNavigationBarItem(
            label: entry.key,
            icon: Icon(entry.value),
          );
        }).toList(),
      ),
    );
  }
}
