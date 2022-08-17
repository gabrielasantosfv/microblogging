// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeController, Store {
  late final _$listPublicationsAtom =
      Atom(name: '_HomeController.listPublications', context: context);

  @override
  List<News> get listPublications {
    _$listPublicationsAtom.reportRead();
    return super.listPublications;
  }

  @override
  set listPublications(List<News> value) {
    _$listPublicationsAtom.reportWrite(value, super.listPublications, () {
      super.listPublications = value;
    });
  }

  late final _$progressListPublicationsAtom =
      Atom(name: '_HomeController.progressListPublications', context: context);

  @override
  bool get progressListPublications {
    _$progressListPublicationsAtom.reportRead();
    return super.progressListPublications;
  }

  @override
  set progressListPublications(bool value) {
    _$progressListPublicationsAtom
        .reportWrite(value, super.progressListPublications, () {
      super.progressListPublications = value;
    });
  }

  late final _$progressListNewsAtom =
      Atom(name: '_HomeController.progressListNews', context: context);

  @override
  bool get progressListNews {
    _$progressListNewsAtom.reportRead();
    return super.progressListNews;
  }

  @override
  set progressListNews(bool value) {
    _$progressListNewsAtom.reportWrite(value, super.progressListNews, () {
      super.progressListNews = value;
    });
  }

  late final _$listNewsAtom =
      Atom(name: '_HomeController.listNews', context: context);

  @override
  List<News> get listNews {
    _$listNewsAtom.reportRead();
    return super.listNews;
  }

  @override
  set listNews(List<News> value) {
    _$listNewsAtom.reportWrite(value, super.listNews, () {
      super.listNews = value;
    });
  }

  late final _$updatingListNewsAtom =
      Atom(name: '_HomeController.updatingListNews', context: context);

  @override
  bool get updatingListNews {
    _$updatingListNewsAtom.reportRead();
    return super.updatingListNews;
  }

  @override
  set updatingListNews(bool value) {
    _$updatingListNewsAtom.reportWrite(value, super.updatingListNews, () {
      super.updatingListNews = value;
    });
  }

  late final _$textControllerAtom =
      Atom(name: '_HomeController.textController', context: context);

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

  late final _$userAtom = Atom(name: '_HomeController.user', context: context);

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
      Atom(name: '_HomeController.progressAddPost', context: context);

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

  late final _$sortListAsyncAction =
      AsyncAction('_HomeController.sortList', context: context);

  @override
  Future<void> sortList() {
    return _$sortListAsyncAction.run(() => super.sortList());
  }

  late final _$getListNewsAsyncAction =
      AsyncAction('_HomeController.getListNews', context: context);

  @override
  Future<void> getListNews(BuildContext context) {
    return _$getListNewsAsyncAction.run(() => super.getListNews(context));
  }

  late final _$_HomeControllerActionController =
      ActionController(name: '_HomeController', context: context);

  @override
  void addNewPost(BuildContext context) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.addNewPost');
    try {
      return super.addNewPost(context);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void message(dynamic context, String message, Color color) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.message');
    try {
      return super.message(context, message, color);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listPublications: ${listPublications},
progressListPublications: ${progressListPublications},
progressListNews: ${progressListNews},
listNews: ${listNews},
updatingListNews: ${updatingListNews},
textController: ${textController},
user: ${user},
progressAddPost: ${progressAddPost}
    ''';
  }
}
