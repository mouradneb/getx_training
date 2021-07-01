import 'package:flutter/material.dart';
import 'package:getx_training/widgets/custom_text_button.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NamedRoutes_06 extends StatelessWidget {
  const NamedRoutes_06({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Page, Named Routes"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "This is Home Screen",
                style: TextStyle(fontSize: 24.w, color: Colors.green.shade900),
              ),
              SizedBox(height: 16.w),
              CustomTextButton(
                  text: "Goto Next",
                  onPressed: () {
                    Get.toNamed("/nextscreen");
                    // Get.toNamed("/nextscreen/30101975"); // 06 - 02
                  }),
              SizedBox(height: 16.w),
              CustomTextButton(
                  text: "Back To Main",
                  onPressed: () {
                    Get.toNamed("/");
                  }),
              SizedBox(height: 16.w),
              /*Text(
                "Channel name is ${Get.parameters['channel'] ?? 'Empty'} and content is ${Get.parameters['content'] ?? 'Empty'}",
                style: TextStyle(color: Colors.red, fontSize: 30),
              ), */ //06 - 01
            ],
          ),
        ),
      ),
    );
  }
}
