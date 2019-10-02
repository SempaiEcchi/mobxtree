import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'main.dart';

// Include generated file
part 'text.g.dart';

// This is the class used by rest of your codebase
class TextTree = _Tree with _$TextTree;

// The store-class
abstract class _Tree with Store {

  @observable
  bool visible=false;

  @observable
  int lenght = 0;

  @observable
  var color = Colors.red;

  @observable
  String text = "";

  @observable
  String controllerText = "";

  @action
    void showImg(){
    if(controllerText.toUpperCase().contains("TREE"))
      {
        visible=true;
      }
    else
      {
      visible=false;
    }


  }

  @action
  void changeColor() {

    if (lenght % 2 == 0) {
      text="paran broj";
      color = Colors.blue;
    } else {
      text="neparan broj";
      color = Colors.red;
    }
  }
}
