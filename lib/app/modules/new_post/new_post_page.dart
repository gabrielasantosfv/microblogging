import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:microblogging/app/shared/components/button/button.dart';
import 'package:microblogging/app/shared/components/icon/icon_button_with_text.dart';
import 'package:microblogging/app/shared/components/text/text.dart';
import 'package:microblogging/app/shared/components/text_field/text_field_area.dart';

import 'new_post_controller.dart';

class NewPostPage extends StatefulWidget {
  const NewPostPage({Key? key}) : super(key: key);

  @override
  State<NewPostPage> createState() => _NewPostPageState();
}

class _NewPostPageState extends State<NewPostPage> {
  final _newPostController = NewPostController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compartilhar publicação'),
        leading: IconButton(
          onPressed: () => Modular.to.navigate('/home/'),
          icon: const Icon(Icons.cancel),
        ),
      ),
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
                          _newPostController.user.profilePicture,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextComponent(
                              text: _newPostController.user.name,
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
                    controller: _newPostController.textController,
                    hintText:
                        "Compartilhe atualizações sobre seus produtos, ideias, curiosidades e muito mais :)",
                  ),
                  const SizedBox(height: 20),
                  ButtonComponent(
                    text: 'Publicar',
                    inProgress: _newPostController.progressAddPost,
                    onPressed: () => _newPostController.addNewPost(context),
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
