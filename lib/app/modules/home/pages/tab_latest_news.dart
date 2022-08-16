import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:microblogging/app/modules/home/home_controller.dart';
import 'package:microblogging/app/shared/components/card/card.dart';
import 'package:microblogging/app/shared/components/text/text.dart';
import 'package:microblogging/app/shared/utils/date_format.dart';

class TabLatestNewsPage extends StatefulWidget {
  const TabLatestNewsPage({Key? key}) : super(key: key);

  @override
  State<TabLatestNewsPage> createState() => _TabLatestNewsPageState();
}

class _TabLatestNewsPageState extends State<TabLatestNewsPage> {
  final _homeController = HomeController();

  @override
  void initState() {
    _homeController.getListNews(context);
    super.initState();
  }

  Future<void> onRefresh() async {
    if (!_homeController.progressListNews) {
      _homeController.updatingListNews = true;
      await _homeController.getListNews(context);
      _homeController.updatingListNews = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Novidades')),
      body: RefreshIndicator(
        color: const Color(0xff3b5168),
        onRefresh: () => onRefresh(),
        child: Observer(builder: (_) {
          return !_homeController.progressListNews
              ? _homeController.listNews.isNotEmpty
                  ? list()
                  : Center(
                      child: TextComponent(
                        text: _homeController.updatingListNews
                            ? 'Buscando novos dados...'
                            : 'Nenhum dado foi encontrado.',
                      ),
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
      itemCount: _homeController.listNews.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(10),
      physics: const ClampingScrollPhysics(),
      itemBuilder: (context, index) {
        return CardComponent(
          name: _homeController.listNews[index].user!.name,
          date: dateTimeFormat(
            _homeController.listNews[index].message!.createdAt,
          ),
          image: _homeController.listNews[index].user!.profilePicture,
          text: _homeController.listNews[index].message!.content,
          numberLikes: _homeController.listNews[index].message!.numberLikes,
          numberComments:
              _homeController.listNews[index].message!.numberComments,
          verified: _homeController.listNews[index].user!.verified,
        );
      },
    );
  }
}
