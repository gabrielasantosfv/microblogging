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

  @override
  String toString() {
    return '''
listPublications: ${listPublications}
    ''';
  }
}
