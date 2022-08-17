// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_post_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewPostController on _NewPostController, Store {
  late final _$textControllerAtom =
      Atom(name: '_NewPostController.textController', context: context);

  @override
  TextEditingController get textController {
    _$textControllerAtom.reportRead();
    return super.textController;
  }

  @override
  set textController(TextEditingController value) {
    _$textControllerAtom.reportWrite(value, super.textController, () {
      super.textController = value;
    });
  }

  late final _$userAtom =
      Atom(name: '_NewPostController.user', context: context);

  @override
  User get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$progressAddPostAtom =
      Atom(name: '_NewPostController.progressAddPost', context: context);

  @override
  bool get progressAddPost {
    _$progressAddPostAtom.reportRead();
    return super.progressAddPost;
  }

  @override
  set progressAddPost(bool value) {
    _$progressAddPostAtom.reportWrite(value, super.progressAddPost, () {
      super.progressAddPost = value;
    });
  }

  late final _$newPostAtom =
      Atom(name: '_NewPostController.newPost', context: context);

  @override
  News get newPost {
    _$newPostAtom.reportRead();
    return super.newPost;
  }

  @override
  set newPost(News value) {
    _$newPostAtom.reportWrite(value, super.newPost, () {
      super.newPost = value;
    });
  }

  late final _$_NewPostControllerActionController =
      ActionController(name: '_NewPostController', context: context);

  @override
  void addNewPost(BuildContext context) {
    final _$actionInfo = _$_NewPostControllerActionController.startAction(
        name: '_NewPostController.addNewPost');
    try {
      return super.addNewPost(context);
    } finally {
      _$_NewPostControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void message(dynamic context, String message, Color color) {
    final _$actionInfo = _$_NewPostControllerActionController.startAction(
        name: '_NewPostController.message');
    try {
      return super.message(context, message, color);
    } finally {
      _$_NewPostControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
textController: ${textController},
user: ${user},
progressAddPost: ${progressAddPost},
newPost: ${newPost}
    ''';
  }
}
