import 'package:flutter/material.dart';
import 'package:microblogging/app/shared/components/button/button.dart';
import 'package:microblogging/app/shared/components/text/text.dart';
import 'package:microblogging/app/shared/components/text/text_button.dart';
import 'package:microblogging/app/shared/components/text_field/text_field_with_prefix.dart';
import 'package:microblogging/app/shared/components/text_field/text_field_with_prefix_and_suffix.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  bool viewPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        color: const Color(0xffb1d5ed),
        child: SingleChildScrollView(
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
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFieldWithPrefix(
            controller: loginController,
            //validator: validateEmail,
            obscureText: false,
            prefixIcon: Icons.email_outlined,
            hintText: 'E-mail',
          ),
          const SizedBox(height: 20),
          TextFieldWithPrefixAndSuffix(
            controller: passwordController,
            //validator: validateText,
            obscureText: !viewPassword,
            prefixIcon: Icons.key_outlined,
            suffixIcon: viewPassword ? Icons.visibility : Icons.visibility_off,
            hintText: 'Senha',
            onTapSuffixIcon: (() {
              setState(() => viewPassword = !viewPassword);
            }),
          ),
          const SizedBox(height: 5),
          TextButtonComponent(text: 'Esqueceu a senha?', onPressed: () {}),
          const SizedBox(height: 20),
          ButtonComponent(
            text: 'Entrar',
            inProgress: false,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
              } else {}
            },
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
  }
}
