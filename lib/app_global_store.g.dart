// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_global_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppGlobalStore on AppGlobalStoreBase, Store {
  late final _$darkModeActivatedAtom =
      Atom(name: 'AppGlobalStoreBase.darkModeActivated', context: context);

  @override
  bool get darkModeActivated {
    _$darkModeActivatedAtom.reportRead();
    return super.darkModeActivated;
  }

  @override
  set darkModeActivated(bool value) {
    _$darkModeActivatedAtom.reportWrite(value, super.darkModeActivated, () {
      super.darkModeActivated = value;
    });
  }

  late final _$pageAtom =
      Atom(name: 'AppGlobalStoreBase.page', context: context);

  @override
  num get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(num value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  late final _$testimonialPageAtom =
      Atom(name: 'AppGlobalStoreBase.testimonialPage', context: context);

  @override
  num get testimonialPage {
    _$testimonialPageAtom.reportRead();
    return super.testimonialPage;
  }

  @override
  set testimonialPage(num value) {
    _$testimonialPageAtom.reportWrite(value, super.testimonialPage, () {
      super.testimonialPage = value;
    });
  }

  late final _$currentPageAtom =
      Atom(name: 'AppGlobalStoreBase.currentPage', context: context);

  @override
  num get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(num value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  late final _$changeActualThemeAsyncAction =
      AsyncAction('AppGlobalStoreBase.changeActualTheme', context: context);

  @override
  Future<void> changeActualTheme() {
    return _$changeActualThemeAsyncAction.run(() => super.changeActualTheme());
  }

  @override
  String toString() {
    return '''
darkModeActivated: ${darkModeActivated},
page: ${page},
testimonialPage: ${testimonialPage},
currentPage: ${currentPage}
    ''';
  }
}
