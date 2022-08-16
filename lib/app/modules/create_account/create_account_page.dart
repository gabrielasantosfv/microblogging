import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:microblogging/app/modules/create_account/create_account_controller.dart';
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
  final _createAccountController = CreateAccountController();

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
    return Observer(builder: (_) {
      return Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFieldWithPrefix(
              controller: _createAccountController.nameController,
              obscureText: false,
              prefixIcon: Icons.person_outline,
              hintText: 'Nome',
            ),
            const SizedBox(height: 20),
            TextFieldWithPrefix(
              controller: _createAccountController.emailController,
              obscureText: false,
              prefixIcon: Icons.email_outlined,
              hintText: 'E-mail',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            TextFieldWithPrefixAndSuffix(
              controller: _createAccountController.passwordController,
              obscureText: !_createAccountController.passwordVisible,
              prefixIcon: Icons.key_outlined,
              suffixIcon: _createAccountController.passwordVisible
                  ? Icons.visibility
                  : Icons.visibility_off,
              hintText: 'Senha',
              onTapSuffixIcon: (() =>
                  _createAccountController.tooglePasswordVisibility()),
            ),
            const SizedBox(height: 20),
            TextFieldWithPrefixAndSuffix(
              controller: _createAccountController.confirmPasswordController,
              obscureText: !_createAccountController.confirmPasswordVisible,
              prefixIcon: Icons.key_outlined,
              suffixIcon: _createAccountController.confirmPasswordVisible
                  ? Icons.visibility
                  : Icons.visibility_off,
              hintText: 'Confirmar senha',
              onTapSuffixIcon: (() =>
                  _createAccountController.toogleConfirmPasswordVisibility()),
            ),
            const SizedBox(height: 20),
            ButtonComponent(
              text: 'Cadastrar',
              inProgress: _createAccountController.progressAddUser,
              onPressed: () => _createAccountController.validate(context),
            ),
            const SizedBox(height: 10),
            TextButtonComponent(
              text: 'Voltar',
              onPressed: () {},
            ),
          ],
        ),
      );
    });
  }
}
