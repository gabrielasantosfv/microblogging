import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:microblogging/app/shared/components/button/button.dart';
import 'package:microblogging/app/shared/components/text/text.dart';
import 'package:microblogging/app/shared/components/text/text_button.dart';
import 'package:microblogging/app/shared/components/text_field/text_field_with_prefix.dart';
import 'package:microblogging/app/shared/components/text_field/text_field_with_prefix_and_suffix.dart';

import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color(0xffb1d5ed),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          physics: const ClampingScrollPhysics(),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 180,
                    width: 180,
                  ),
                  TextComponent(
                    text: 'Microblogging'.toUpperCase(),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 30),
                  form(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget form() {
    return Observer(builder: (_) {
      return Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFieldWithPrefix(
              controller: _loginController.emailController,
              obscureText: false,
              prefixIcon: Icons.email_outlined,
              hintText: 'E-mail',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            TextFieldWithPrefixAndSuffix(
              controller: _loginController.passwordController,
              obscureText: !_loginController.passwordVisible,
              prefixIcon: Icons.key_outlined,
              suffixIcon: _loginController.passwordVisible
                  ? Icons.visibility
                  : Icons.visibility_off,
              hintText: 'Senha',
              onTapSuffixIcon: (() =>
                  _loginController.tooglePasswordVisibility()),
            ),
            const SizedBox(height: 5),
            TextButtonComponent(text: 'Esqueceu a senha?', onPressed: () {}),
            const SizedBox(height: 20),
            ButtonComponent(
              text: 'Entrar',
              inProgress: _loginController.progressLogin,
              onPressed: () => _loginController.login(context),
            ),
            const SizedBox(height: 10),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: [
                const TextComponent(text: 'Não tem cadastro ainda?'),
                TextButtonComponent(
                  text: 'Registre-se',
                  fontWeight: FontWeight.bold,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
