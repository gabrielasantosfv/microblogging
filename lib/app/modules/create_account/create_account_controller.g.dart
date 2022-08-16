// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateAccountController on _CreateAccountController, Store {
  late final _$nameControllerAtom =
      Atom(name: '_CreateAccountController.nameController', context: context);

  @override
  TextEditingController get nameController {
    _$nameControllerAtom.reportRead();
    return super.nameController;
  }

  @override
  set nameController(TextEditingController value) {
    _$nameControllerAtom.reportWrite(value, super.nameController, () {
      super.nameController = value;
    });
  }

  late final _$emailControllerAtom =
      Atom(name: '_CreateAccountController.emailController', context: context);

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

  late final _$passwordControllerAtom = Atom(
      name: '_CreateAccountController.passwordController', context: context);

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

  late final _$confirmPasswordControllerAtom = Atom(
      name: '_CreateAccountController.confirmPasswordController',
      context: context);

  @override
  TextEditingController get confirmPasswordController {
    _$confirmPasswordControllerAtom.reportRead();
    return super.confirmPasswordController;
  }

  @override
  set confirmPasswordController(TextEditingController value) {
    _$confirmPasswordControllerAtom
        .reportWrite(value, super.confirmPasswordController, () {
      super.confirmPasswordController = value;
    });
  }

  late final _$passwordVisibleAtom =
      Atom(name: '_CreateAccountController.passwordVisible', context: context);

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

  late final _$confirmPasswordVisibleAtom = Atom(
      name: '_CreateAccountController.confirmPasswordVisible',
      context: context);

  @override
  bool get confirmPasswordVisible {
    _$confirmPasswordVisibleAtom.reportRead();
    return super.confirmPasswordVisible;
  }

  @override
  set confirmPasswordVisible(bool value) {
    _$confirmPasswordVisibleAtom
        .reportWrite(value, super.confirmPasswordVisible, () {
      super.confirmPasswordVisible = value;
    });
  }

  late final _$progressAddUserAtom =
      Atom(name: '_CreateAccountController.progressAddUser', context: context);

  @override
  bool get progressAddUser {
    _$progressAddUserAtom.reportRead();
    return super.progressAddUser;
  }

  @override
  set progressAddUser(bool value) {
    _$progressAddUserAtom.reportWrite(value, super.progressAddUser, () {
      super.progressAddUser = value;
    });
  }

  late final _$_CreateAccountControllerActionController =
      ActionController(name: '_CreateAccountController', context: context);

  @override
  void tooglePasswordVisibility() {
    final _$actionInfo = _$_CreateAccountControllerActionController.startAction(
        name: '_CreateAccountController.tooglePasswordVisibility');
    try {
      return super.tooglePasswordVisibility();
    } finally {
      _$_CreateAccountControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toogleConfirmPasswordVisibility() {
    final _$actionInfo = _$_CreateAccountControllerActionController.startAction(
        name: '_CreateAccountController.toogleConfirmPasswordVisibility');
    try {
      return super.toogleConfirmPasswordVisibility();
    } finally {
      _$_CreateAccountControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validate(BuildContext context) {
    final _$actionInfo = _$_CreateAccountControllerActionController.startAction(
        name: '_CreateAccountController.validate');
    try {
      return super.validate(context);
    } finally {
      _$_CreateAccountControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void message(dynamic context, String message, Color color) {
    final _$actionInfo = _$_CreateAccountControllerActionController.startAction(
        name: '_CreateAccountController.message');
    try {
      return super.message(context, message, color);
    } finally {
      _$_CreateAccountControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nameController: ${nameController},
emailController: ${emailController},
passwordController: ${passwordController},
confirmPasswordController: ${confirmPasswordController},
passwordVisible: ${passwordVisible},
confirmPasswordVisible: ${confirmPasswordVisible},
progressAddUser: ${progressAddUser}
    ''';
  }
}
