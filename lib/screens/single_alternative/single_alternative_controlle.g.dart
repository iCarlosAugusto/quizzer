// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_alternative_controlle.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SingleAlternativeController on _SingleAlternativeControllerBase, Store {
  late final _$currentAlternativeSelectedAtom = Atom(
      name: '_SingleAlternativeControllerBase.currentAlternativeSelected',
      context: context);

  @override
  Alternative? get currentAlternativeSelected {
    _$currentAlternativeSelectedAtom.reportRead();
    return super.currentAlternativeSelected;
  }

  @override
  set currentAlternativeSelected(Alternative? value) {
    _$currentAlternativeSelectedAtom
        .reportWrite(value, super.currentAlternativeSelected, () {
      super.currentAlternativeSelected = value;
    });
  }

  late final _$_SingleAlternativeControllerBaseActionController =
      ActionController(
          name: '_SingleAlternativeControllerBase', context: context);

  @override
  dynamic setCurrentAlternativeSelected(Alternative newAlternative) {
    final _$actionInfo =
        _$_SingleAlternativeControllerBaseActionController.startAction(
            name:
                '_SingleAlternativeControllerBase.setCurrentAlternativeSelected');
    try {
      return super.setCurrentAlternativeSelected(newAlternative);
    } finally {
      _$_SingleAlternativeControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  bool? validateAlternative({required String reply}) {
    final _$actionInfo =
        _$_SingleAlternativeControllerBaseActionController.startAction(
            name: '_SingleAlternativeControllerBase.validateAlternative');
    try {
      return super.validateAlternative(reply: reply);
    } finally {
      _$_SingleAlternativeControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentAlternativeSelected: ${currentAlternativeSelected}
    ''';
  }
}
