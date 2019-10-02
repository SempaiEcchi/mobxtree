// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TextTree on _Tree, Store {
  final _$visibleAtom = Atom(name: '_Tree.visible');

  @override
  bool get visible {
    _$visibleAtom.context.enforceReadPolicy(_$visibleAtom);
    _$visibleAtom.reportObserved();
    return super.visible;
  }

  @override
  set visible(bool value) {
    _$visibleAtom.context.conditionallyRunInAction(() {
      super.visible = value;
      _$visibleAtom.reportChanged();
    }, _$visibleAtom, name: '${_$visibleAtom.name}_set');
  }

  final _$lenghtAtom = Atom(name: '_Tree.lenght');

  @override
  int get lenght {
    _$lenghtAtom.context.enforceReadPolicy(_$lenghtAtom);
    _$lenghtAtom.reportObserved();
    return super.lenght;
  }

  @override
  set lenght(int value) {
    _$lenghtAtom.context.conditionallyRunInAction(() {
      super.lenght = value;
      _$lenghtAtom.reportChanged();
    }, _$lenghtAtom, name: '${_$lenghtAtom.name}_set');
  }

  final _$colorAtom = Atom(name: '_Tree.color');

  @override
  MaterialColor get color {
    _$colorAtom.context.enforceReadPolicy(_$colorAtom);
    _$colorAtom.reportObserved();
    return super.color;
  }

  @override
  set color(MaterialColor value) {
    _$colorAtom.context.conditionallyRunInAction(() {
      super.color = value;
      _$colorAtom.reportChanged();
    }, _$colorAtom, name: '${_$colorAtom.name}_set');
  }

  final _$textAtom = Atom(name: '_Tree.text');

  @override
  String get text {
    _$textAtom.context.enforceReadPolicy(_$textAtom);
    _$textAtom.reportObserved();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.context.conditionallyRunInAction(() {
      super.text = value;
      _$textAtom.reportChanged();
    }, _$textAtom, name: '${_$textAtom.name}_set');
  }

  final _$controllerTextAtom = Atom(name: '_Tree.controllerText');

  @override
  String get controllerText {
    _$controllerTextAtom.context.enforceReadPolicy(_$controllerTextAtom);
    _$controllerTextAtom.reportObserved();
    return super.controllerText;
  }

  @override
  set controllerText(String value) {
    _$controllerTextAtom.context.conditionallyRunInAction(() {
      super.controllerText = value;
      _$controllerTextAtom.reportChanged();
    }, _$controllerTextAtom, name: '${_$controllerTextAtom.name}_set');
  }

  final _$_TreeActionController = ActionController(name: '_Tree');

  @override
  void showImg() {
    final _$actionInfo = _$_TreeActionController.startAction();
    try {
      return super.showImg();
    } finally {
      _$_TreeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeColor() {
    final _$actionInfo = _$_TreeActionController.startAction();
    try {
      return super.changeColor();
    } finally {
      _$_TreeActionController.endAction(_$actionInfo);
    }
  }
}
