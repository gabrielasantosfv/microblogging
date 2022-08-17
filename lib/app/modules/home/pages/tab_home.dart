import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:microblogging/app/shared/components/card/card.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:microblogging/app/shared/components/text/text.dart';
import 'package:microblogging/app/shared/utils/date_format.dart';

import '../home_controller.dart';
import '../models/post_model.dart';

class TabHomePage extends StatefulWidget {
  TabHomePage({Key? key, this.newPost}) : super(key: key);
  News? newPost;

  @override
  State<TabHomePage> createState() => _TabHomePageState();
}

class _TabHomePageState extends State<TabHomePage> {
  final _homeController = HomeController();

  @override
  void initState() {
    if (widget.newPost != null) {
      _homeController.listPublications.add(widget.newPost);
    }
    _homeController.sortList();
    super.initState();
  }

  Future<void> onRefresh() async {
    _homeController.sortList();
    await Future.delayed(const Duration(milliseconds: 1000));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Início'),
        actions: [
          IconButton(
            onPressed: () => Modular.to.navigate('/new_post/'),
            icon: const Icon(Icons.add_circle),
          )
        ],
      ),
      body: RefreshIndicator(
        color: const Color(0xff3b5168),
        onRefresh: () => onRefresh(),
        child: Observer(builder: (_) {
          return !_homeController.progressListPublications
              ? _homeController.listPublications.isNotEmpty
                  ? list()
                  : const Center(
                      child: TextComponent(text: 'Nenhum dado foi encontrado.'),
                    )
              : const Center(
                  child: CircularProgressIndicator(color: Color(0xff3b5168)),
                );
        }),
      ),
    );
  }

  Widget list() {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemCount: _homeController.listPublications.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(10),
      physics: const AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return CardComponent(
          name: _homeController.listPublications[index]!.user!.name,
          date: dateTimeFormat(
            _homeController.listPublications[index]!.message!.createdAt,
          ),
          image: _homeController.listPublications[index]!.user!.profilePicture,
          text: _homeController.listPublications[index]!.message!.content,
          numberLikes:
              _homeController.listPublications[index]!.message!.numberLikes,
          numberComments:
              _homeController.listPublications[index]!.message!.numberComments,
          verified: _homeController.listPublications[index]!.user!.verified,
        );
      },
    );
  }
}
