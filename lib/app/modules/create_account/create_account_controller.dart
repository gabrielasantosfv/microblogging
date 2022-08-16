import 'dart:async';

import 'package:flutter/material.dart';
import 'package:microblogging/app/shared/utils/snackbar.dart';
import 'package:microblogging/app/shared/validators/validate_email.dart';
import 'package:mobx/mobx.dart';

part 'create_account_controller.g.dart';

class CreateAccountController = _CreateAccountController
    with _$CreateAccountController;

abstract class _CreateAccountController with Store {
  @observable
  TextEditingController nameController = TextEditingController();

  @observable
  TextEditingController emailController = TextEditingController();

  @observable
  TextEditingController passwordController = TextEditingController();

  @observable
  TextEditingController confirmPasswordController = TextEditingController();

  @observable
  bool passwordVisible = false;

  @observable
  bool confirmPasswordVisible = false;

  @observable
  bool progressAddUser = false;

  @action
  void tooglePasswordVisibility() => passwordVisible = !passwordVisible;

  @action
  void toogleConfirmPasswordVisibility() =>
      confirmPasswordVisible = !confirmPasswordVisible;

  @action
  void validate(BuildContext context) {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty) {
      message(context, 'Informe todos os campos', Colors.red);
    } else if (nameController.text.length < 6) {
      message(
        context,
        'O nome deve conter no mínimo 6 caracteres',
        Colors.red,
      );
    } else if (validateEmail(emailController.text) != '') {
      message(context, validateEmail(emailController.text), Colors.red);
    } else if (passwordController.text.length < 6) {
      message(
        context,
        'A senha deve conter no mínimo 6 caracteres',
        Colors.red,
      );
    } else if (passwordController.text != confirmPasswordController.text) {
      message(context, 'As senhas informadas não coincidem', Colors.red);
    } else {
      progressAddUser = true;
      Timer(const Duration(milliseconds: 1000), () {
        nameController.text = '';
        emailController.text = '';
        passwordController.text = '';
        confirmPasswordController.text = '';
        progressAddUser = false;
        message(
          context,
          'Cadastro realizado com sucesso! Faça login para continuar.',
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
