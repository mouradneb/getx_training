import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_training/09_separate_uicode_business/my_controller.dart';
import 'package:getx_training/widgets/custom_text_button.dart';

class UiCodeBusinessLogic_09 extends StatelessWidget {
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 960),
      builder: () => GetMaterialApp(
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text("Separating Ui Code and Business Logic"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() => Text(
                        // "Student name is ${myController.student.name}", //09 -01
                        "Student name is ${myController.student.value.name}",
                        style: TextStyle(fontSize: 28.sp),
                      )),
                  CustomTextButton(
                      text: "Convert to Upper",
                      onPressed: () {
                        myController.convertUpperCase();
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
