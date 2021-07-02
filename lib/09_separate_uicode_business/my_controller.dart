import 'package:get/get.dart';
import 'package:getx_training/09_separate_uicode_business/student.dart';

class MyController extends GetxController {
  // 09 - 01
  // Student student = new Student();

  // void convertUpperCase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }

  var student = Student(name: "Mourad", age: 46).obs;

  void convertUpperCase() {
    student.update((s) {
      s?.name = s.name.toString().toUpperCase();
    });
  }
}
