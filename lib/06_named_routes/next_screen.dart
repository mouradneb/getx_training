import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../custom_text_button.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Next Screen , Named Routes"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "This is Next Screen",
                style: TextStyle(fontSize: 24.w, color: Colors.green.shade900),
              ),
              SizedBox(height: 16.w),
              CustomTextButton(
                  text: "Goto Main",
                  onPressed: () {
                    Get.toNamed("/");
                  }),
              SizedBox(height: 16.w),
              CustomTextButton(
                  text: "Back to Home",
                  onPressed: () {
                    Get.toNamed("/home");
                    // Get.toNamed("/homeX"); // 06 - 03
                  }),
              SizedBox(height: 16.w),
              /*Text(
                "Some Value is ${Get.parameters['someValue'] ?? 'Empty'}",
                style: TextStyle(color: Colors.red, fontSize: 30),
              ), */ //06 - 02
            ],
          ),
        ),
      ),
    );
  }
}
