import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:microblogging/app/modules/home/home_controller.dart';
import 'package:microblogging/app/shared/components/button/button.dart';
import 'package:microblogging/app/shared/components/icon/icon_button_with_text.dart';
import 'package:microblogging/app/shared/components/text/text.dart';
import 'package:microblogging/app/shared/components/text_field/text_field_area.dart';

class TabNewPostPage extends StatefulWidget {
  const TabNewPostPage({Key? key}) : super(key: key);

  @override
  State<TabNewPostPage> createState() => _TabNewPostPageState();
}

class _TabNewPostPageState extends State<TabNewPostPage> {
  final _homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Compartilhar publicação')),
      body: Observer(builder: (_) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: SizedBox(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.blue[50],
                        backgroundImage: NetworkImage(
                          _homeController.user.profilePicture,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextComponent(
                              text: _homeController.user.name,
                              textAlign: TextAlign.left,
                              fontWeight: FontWeight.bold,
                            ),
                            const SizedBox(height: 5),
                            IconButtonWithText(
                              icon: Icons.public,
                              onPressed: () {},
                              text: 'Público',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  TextFieldAreaComponent(
                    controller: _homeController.textController,
                    hintText:
                        "Compartilhe atualizações sobre seus produtos, ideias, curiosidades e muito mais :)",
                  ),
                  const SizedBox(height: 20),
                  ButtonComponent(
                    text: 'Publicar',
                    inProgress: _homeController.progressAddPost,
                    onPressed: () => _homeController.addNewPost(context),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
