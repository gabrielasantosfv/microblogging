import 'package:flutter/material.dart';
import 'package:microblogging/app/shared/components/card/card.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:microblogging/app/shared/utils/date_format.dart';

import '../home_controller.dart';

class TabHomePage extends StatefulWidget {
  const TabHomePage({Key? key}) : super(key: key);

  @override
  State<TabHomePage> createState() => _TabHomePageState();
}

class _TabHomePageState extends State<TabHomePage> {
  final _homeController = HomeController();

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 1000));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Início')),
      body: RefreshIndicator(
        color: const Color(0xff3b5168),
        onRefresh: () => onRefresh(),
        child: Observer(builder: (_) {
          return ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            itemCount: _homeController.listPublications.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(10),
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return CardComponent(
                name: _homeController.listPublications[index].user!.name,
                date: dateTimeFormat(
                  _homeController.listPublications[index].message!.createdAt,
                ),
                image: _homeController
                    .listPublications[index].user!.profilePicture,
                text: _homeController.listPublications[index].message!.content,
                numberLikes: _homeController
                    .listPublications[index].message!.numberLikes,
                numberComments: _homeController
                    .listPublications[index].message!.numberComments,
                verified:
                    _homeController.listPublications[index].user!.verified,
              );
            },
          );
        }),
      ),
    );
  }
}
