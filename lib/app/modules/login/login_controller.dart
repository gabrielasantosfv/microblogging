import 'dart:async';

import 'package:flutter/material.dart';
import 'package:microblogging/app/modules/create_account/user_logged_model.dart';
import 'package:microblogging/app/modules/home/models/post_model.dart';
import 'package:microblogging/app/shared/utils/snackbar.dart';
import 'package:microblogging/app/shared/validators/validate_email.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  @observable
  TextEditingController emailController = TextEditingController();

  @observable
  TextEditingController passwordController = TextEditingController();

  @observable
  bool passwordVisible = false;

  @observable
  bool progressLogin = false;

  @action
  void tooglePasswordVisibility() => passwordVisible = !passwordVisible;

  @action
  void login(BuildContext context) {
    if (emailController.text.isEmpty && passwordController.text.isEmpty) {
      message(context, 'Informe seu e-mail e senha para continuar', Colors.red);
    } else if (emailController.text.isEmpty) {
      message(context, 'E-mail obrigatório', Colors.red);
    } else if (validateEmail(emailController.text) != '') {
      message(context, validateEmail(emailController.text), Colors.red);
    } else if (passwordController.text.isEmpty) {
      message(context, 'Senha obrigatória', Colors.red);
    } else if (passwordController.text.length < 6) {
      message(
        context,
        'A senha deve conter no mínimo 6 caracteres',
        Colors.red,
      );
    } else {
      progressLogin = true;
      Timer(const Duration(milliseconds: 1000), () {
        emailController.text = '';
        passwordController.text = '';

        UserLogged user = UserLogged(
          user: User(
            name: emailController.text,
            profilePicture:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/2048px-Circle-icons-profile.svg.png',
            verified: false,
          ),
        );
        user.save();

        progressLogin = false;

        message(
          context,
          'Seja bem-vindo(a) ao nosso microblogging!',
          Colors.green,
        );
      });
    }
  }

  @action
  void message(context, String message, Color color) {
    showSnackBar(context: context, message: message, color: color);
  }
}
