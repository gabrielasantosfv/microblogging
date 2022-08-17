import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:microblogging/app/shared/utils/snackbar.dart';
import 'package:mobx/mobx.dart';

import '../home/models/post_model.dart';

part 'new_post_controller.g.dart';

class NewPostController = _NewPostController with _$NewPostController;

abstract class _NewPostController with Store {
  @observable
  TextEditingController textController = TextEditingController();

  @observable
  User user = User(
    name: 'Gabriela Santos',
    profilePicture:
        'https://media-exp1.licdn.com/dms/image/C4E03AQGvzobOG-_b5A/profile-displayphoto-shrink_800_800/0/1628476768908?e=1666224000&v=beta&t=59Z5uO7eAo0P_IYf8c2I4sGf7YXbUN1B_9gZ8KvBFBo',
    verified: false,
  );

  @observable
  bool progressAddPost = false;

  @observable
  News newPost = News();

  @action
  void addNewPost(BuildContext context) {
    try {
      if (textController.text.isEmpty) {
        message(
            context, 'Informe o que você deseja compartilhar', Colors.orange);
      } else if (textController.text.length < 5) {
        message(
          context,
          'Sua publicação deve conter no mínimo 5 caracteres',
          Colors.red,
        );
      } else {
        progressAddPost = true;
        FocusScope.of(context).requestFocus(FocusNode());
        Timer(const Duration(milliseconds: 1000), () {
          newPost = News(
            message: Message(
              content: textController.text,
              createdAt: DateTime.now().toString(),
              liked: false,
              numberComments: 0,
              numberLikes: 0,
            ),
            user: user,
          );
          textController.text = '';
          progressAddPost = false;
          message(context, 'Post publicado com sucesso!', Colors.green);
          Timer(const Duration(milliseconds: 1000), () {
            Modular.to.navigate('/home/', arguments: newPost);
          });
        });
      }
    } catch (e) {
      message(context, e.toString(), Colors.red);
    }
  }

  @action
  void message(context, String message, Color color) {
    showSnackBar(context: context, message: message, color: color);
  }
}
