import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:microblogging/app/modules/new_post/new_post_controller.dart';
import 'package:microblogging/app/shared/components/card/card.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:microblogging/app/shared/components/icon/icon.dart';
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
  final _newPostController = NewPostController();

  @override
  void initState() {
    if (widget.newPost != null) {
      _homeController.listPublications.removeWhere(
        (item) => item!.id == widget.newPost!.id,
      );
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
          userLogged: isUserLogged(
            _homeController.listPublications[index]!.user!.name,
          ),
          popupMenuButton: popMenuButton(
            _homeController.listPublications[index],
          ),
        );
      },
    );
  }

  Widget popMenuButton(News? publication) {
    return Observer(builder: (_) {
      return PopupMenuButton(
        child: const IconComponent(
          icon: Icons.more_vert,
          size: 25,
        ),
        onSelected: (value) {},
        itemBuilder: (context) => [
          PopupMenuItem(
            child: GestureDetector(
              onTap: () => edit(publication),
              child: const TextComponent(text: "Editar"),
            ),
          ),
          PopupMenuItem(
            child: GestureDetector(
              onTap: () => remove(context, publication),
              child: const TextComponent(text: "Excluir"),
            ),
          ),
        ],
      );
    });
  }

  bool isUserLogged(String name) {
    if (name == _newPostController.user.name) {
      return true;
    } else {
      return false;
    }
  }

  edit(News? publication) {
    setState(() {
      Modular.to.navigate('/new_post/', arguments: publication);
    });
  }

  remove(BuildContext context, News? publication) {
    showDialog(
      context: context,
      builder: (context) {
        return Observer(builder: (_) {
          return AlertDialog(
            title: const TextComponent(
              text: 'Atenção',
              textAlign: TextAlign.left,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            content: const TextComponent(
              text: 'Deseja realmente excluir a publicação?',
              textAlign: TextAlign.left,
            ),
            actions: <Widget>[
              !_homeController.progressRemovePublication
                  ? TextButton(
                      child: const TextComponent(text: 'Cancelar'),
                      onPressed: () => Navigator.of(context).pop(false),
                    )
                  : Container(),
              TextButton(
                child: !_homeController.progressRemovePublication
                    ? const TextComponent(text: 'Sim')
                    : const CircularProgressIndicator(color: Color(0xff3b5168)),
                onPressed: () async {
                  await _homeController.removePublication(
                    context,
                    publication,
                  );
                  setState(() {
                    FocusScope.of(context).requestFocus(FocusNode());
                    Navigator.of(context).pop(true);
                  });
                },
              )
            ],
          );
        });
      },
    );
  }
}
