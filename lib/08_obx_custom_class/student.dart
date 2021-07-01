import 'package:get/get.dart';

class Student {
  /*  Classes can be made Observable by making individuals variable Rx
  or by making entire class Observable
  */

  // individual variables Rx
  /* var name = "Mourad".obs;
  var age = 46.obs; */ // 08 - 01

  // to make entire class observable
  var name;
  var age;
  Student({this.name, this.age});

  /* RxString get name => this._name;
  set name(RxString name) => this._name = name;

  RxInt get age => this._age;
  set age(RxInt age) => this._age = age;

  Student(this._age, this._name);

  Student.name(this._name);*/

}
