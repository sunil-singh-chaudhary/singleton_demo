import 'package:flutter/material.dart';

void main() {
  NormalClass nObj = NormalClass();
  nObj.name = 'SUNIL';
  debugPrint("normal--0--${nObj.name}");

  NormalClass nObj2 = NormalClass();
  nObj2.name = 'SINGH';
  debugPrint(" normal --1--${nObj.name}");

  SingleTonClass sobj =
      SingleTonClass(); //having same memory shared in singleton
  sobj.name = 'SUNIL';
  debugPrint("singleton-0-${sobj.name}");

  SingleTonClass sobj2 =
      SingleTonClass(); //replace above object whith new object

  sobj.name = 'SINGH';
  debugPrint("singleton--${sobj.name}");
  debugPrint(
      "sobj2--${sobj2.name}"); //get last value on object 1 also get using obje2

  //we can direactly use it also
  var object = SingleTonClass._instance;
  print(object.name);

  //can also check using hascode
}

class NormalClass {
  String? name;
}

class SingleTonClass {
  SingleTonClass.internal();
  static final SingleTonClass _instance = SingleTonClass.internal();
  factory SingleTonClass() {
    return _instance;
  }
  String? name;
}
