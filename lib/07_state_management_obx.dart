import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'widgets/custom_text_button.dart';

class StateManagement_Obx_07 extends StatelessWidget {
  var count = 0.obs;

  void increment() {
    count++;
  }

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
                      "Count value is $count",
                      style: TextStyle(fontSize: 25.sp),
                    )),
                SizedBox(height: 16.h),
                SizedBox(
                  height: 36.h,
                  width: 75.w,
                  child: CustomTextButton(
                    text: "Increment",
                    onPressed: () => increment(),
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
