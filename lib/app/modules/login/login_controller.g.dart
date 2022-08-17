// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginController on _LoginController, Store {
  late final _$emailControllerAtom =
      Atom(name: '_LoginController.emailController', context: context);

  @override
  TextEditingController get emailController {
    _$emailControllerAtom.reportRead();
    return super.emailController;
  }

  @override
  set emailController(TextEditingController value) {
    _$emailControllerAtom.reportWrite(value, super.emailController, () {
      super.emailController = value;
    });
  }

  late final _$passwordControllerAtom =
      Atom(name: '_LoginController.passwordController', context: context);

  @override
  TextEditingController get passwordController {
    _$passwordControllerAtom.reportRead();
    return super.passwordController;
  }

  @override
  set passwordController(TextEditingController value) {
    _$passwordControllerAtom.reportWrite(value, super.passwordController, () {
      super.passwordController = value;
    });
  }

  late final _$passwordVisibleAtom =
      Atom(name: '_LoginController.passwordVisible', context: context);

  @override
  bool get passwordVisible {
    _$passwordVisibleAtom.reportRead();
    return super.passwordVisible;
  }

  @override
  set passwordVisible(bool value) {
    _$passwordVisibleAtom.reportWrite(value, super.passwordVisible, () {
      super.passwordVisible = value;
    });
  }

  late final _$progressLoginAtom =
      Atom(name: '_LoginController.progressLogin', context: context);

  @override
  bool get progressLogin {
    _$progressLoginAtom.reportRead();
    return super.progressLogin;
  }

  @override
  set progressLogin(bool value) {
    _$progressLoginAtom.reportWrite(value, super.progressLogin, () {
      super.progressLogin = value;
    });
  }

  late final _$_LoginControllerActionController =
      ActionController(name: '_LoginController', context: context);

  @override
  void tooglePasswordVisibility() {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.tooglePasswordVisibility');
    try {
      return super.tooglePasswordVisibility();
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void login(BuildContext context) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.login');
    try {
      return super.login(context);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void message(dynamic context, String message, Color color) {
    final _$actionInfo = _$_LoginControllerActionController.startAction(
        name: '_LoginController.message');
    try {
      return super.message(context, message, color);
    } finally {
      _$_LoginControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
emailController: ${emailController},
passwordController: ${passwordController},
passwordVisible: ${passwordVisible},
progressLogin: ${progressLogin}
    ''';
  }
}
