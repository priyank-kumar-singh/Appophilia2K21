import 'package:code_bites/models/news.dart';
import 'package:code_bites/providers/news.dart';
import 'package:code_bites/views/tab_2.dart';
import 'package:code_bites/views/tab_3.dart';
import 'package:code_bites/views/tab_4.dart';
import 'package:code_bites/views/tab_5.dart';
import 'package:code_bites/widgets/cards.dart';
import 'package:code_bites/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String _appbarTitle = 'Daily News';
  final Map<String, IconData> _bottomNavigationItemsLable = {
    'Home': Icons.home,
    'Grid': FontAwesomeIcons.thLarge,
    'Search': Icons.search,
    'Bookmark': Icons.bookmark_outline,
    'Account': Icons.person_outline_rounded,
  };

  int _bottomBarIndex = 0;

  bool _loading = true, _error = false;
  List<NewsItem> _newsItems = [];

  void handleBottomBarTap(int index) {
    setState(() {
      _bottomBarIndex = index;
    });
  }

  void _getNews([bool x = true]) async {
    try {
      if (x) {
        setState(() {
          _loading = true;
        });
      }
      News news = News();
      await news.getNews();
      _newsItems.clear();
      _newsItems = news.news;
      setState(() {
        _error = false;
      });
    } catch (e) {
      setState(() {
        _error = true;
      });
    } finally {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _getNews(false);
  }

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
        automaticallyImplyLeading: false,
      ),
      body: Visibility(
        visible: !_loading,
        child: Visibility(
          visible: !_error,
          child: _buildBody(context),
          replacement: Center(
            child: ElevatedButton(
              child: Text('Retry'),
              onPressed: _getNews,
            ),
          ),
        ),
        replacement: Center(
          child: SpinKitChasingDots(
            color: Colors.redAccent,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _bottomBarIndex,
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

  Widget _buildBody(BuildContext context) {
    if (_bottomBarIndex == 1) {
      return Tab2();
    } else if (_bottomBarIndex == 2) {
      return Tab3();
    } else if (_bottomBarIndex == 3) {
      return Tab4();
    } else if (_bottomBarIndex == 4) {
      return Tab5();
    } else {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 14.0),
          child: Column(
            children: [
              _newsItems.length > 0 ? HomeHeader(_newsItems[0]) : Container(),
            ]..addAll(
              _newsItems.map((item) {
                return NewsCard(item);
              }).toList(),
            ),
          ),
        ),
      );
    }
  }
}
