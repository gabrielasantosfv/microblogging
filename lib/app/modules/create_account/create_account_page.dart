import 'package:flutter/material.dart';
import 'package:microblogging/app/shared/components/button/button.dart';
import 'package:microblogging/app/shared/components/text/text.dart';
import 'package:microblogging/app/shared/components/text/text_button.dart';
import 'package:microblogging/app/shared/components/text_field/text_field_with_prefix.dart';
import 'package:microblogging/app/shared/components/text_field/text_field_with_prefix_and_suffix.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool viewPassword = false;
  bool viewConfirmPassword = false;

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
                    height: 160,
                    width: 160,
                  ),
                  TextComponent(
                    text: 'Microblogging'.toUpperCase(),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 15),
                  const TextComponent(text: 'Cadastre-se'),
                  const SizedBox(height: 20),
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
            controller: nameController,
            //validator: validateText,
            obscureText: false,
            prefixIcon: Icons.person_outline,
            hintText: 'Nome',
          ),
          const SizedBox(height: 20),
          TextFieldWithPrefix(
            controller: loginController,
            //validator: validateEmail,
            obscureText: false,
            prefixIcon: Icons.email_outlined,
            hintText: 'E-mail',
            keyboardType: TextInputType.emailAddress,
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
          const SizedBox(height: 20),
          TextFieldWithPrefixAndSuffix(
            controller: confirmPasswordController,
            //validator: validateText,
            obscureText: !viewConfirmPassword,
            prefixIcon: Icons.key_outlined,
            suffixIcon:
                viewConfirmPassword ? Icons.visibility : Icons.visibility_off,
            hintText: 'Confirmar senha',
            onTapSuffixIcon: (() {
              setState(() => viewConfirmPassword = !viewConfirmPassword);
            }),
          ),
          const SizedBox(height: 20),
          ButtonComponent(
            text: 'Cadastrar',
            inProgress: false,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
              } else {}
            },
          ),
          const SizedBox(height: 10),
          TextButtonComponent(
            text: 'Voltar',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
