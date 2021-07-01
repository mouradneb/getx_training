import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_training/widgets/custom_text_button.dart';

import 'student.dart';

class ObxCustomClass_08 extends StatelessWidget {
  //const ObxCustomClass_08({Key? key}) : super(key: key);

  // var student = Student(); // 08 - 01
  final student = Student(name: "Mourad", age: 46).obs;

  var upperCase = false;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 960),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("State Management"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => Text(
                      //"Student Name is ${student.name.value}", // 08 - 01
                      "Student Name is ${student.value.name}", // 08 - 02
                      style: TextStyle(fontSize: 25.sp),
                    )),
                SizedBox(height: 16.h),
                SizedBox(
                  height: 40.h,
                  width: 150.w,
                  child: CustomTextButton(
                    text: "Upper Student",
                    onPressed: () {
                      upperCase = !upperCase;
                      if (upperCase)
                        // if individual varianles are observable
                        // student.name.value = student.name.value.toUpperCase(); // 08 - 01
                        student.update((student) {
                          student?.name = student.name.toString().toUpperCase();
                        });
                      else
                        // if individual varianles are observable
                        // student.name.value = student.name.value.toLowerCase(); // 08 - 01
                        student.update((student) {
                          student?.name = student.name.toString().toLowerCase();
                        });
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
