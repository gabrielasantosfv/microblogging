import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:microblogging/app/modules/home/models/post_model.dart';

import 'tab_home.dart';
import 'tab_latest_news.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, this.newPost}) : super(key: key);
  News? newPost;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int tabPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          onTap: (value) => setState(() => tabPage = value),
          activeColor: Colors.white,
          backgroundColor: const Color(0xff3b5168),
          iconSize: 22,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper_rounded),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.new_releases_rounded),
              label: 'Novidades',
            ),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(
                    child: TabHomePage(newPost: widget.newPost),
                  );
                },
              );
            case 1:
              return CupertinoTabView(
                builder: (context) {
                  return const CupertinoPageScaffold(
                    child: TabLatestNewsPage(),
                  );
                },
              );
            default:
              return const CupertinoTabView();
          }
        },
      ),
    );
  }
}
