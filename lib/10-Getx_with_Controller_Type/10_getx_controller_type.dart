import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_training/widgets/custom_text_button.dart';

import 'my_controller.dart';

class GetxControllerType_10 extends StatelessWidget {
  // const GetxControllerType_10({Key? key}) : super(key: key);

  MyController myController = Get.put(MyController()); // 10 - 02

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 960),
        builder: () => GetMaterialApp(
              home: SafeArea(
                child: Scaffold(
                  appBar: AppBar(
                    title: Text("Getx By Controller Type"),
                  ),
                  body: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GetX<MyController>(
                          // init: MyController(), // deactivate 10 - 02
                          builder: (controller) {
                            return Text(
                              // "The Value is ${controller.count}",
                              "The Value is ${myController.count}", // 10 - 02

                              style: TextStyle(fontSize: 24.sp),
                            );
                          },
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        CustomTextButton(
                            text: "increment",
                            onPressed: () {
                              // Get.find<MyController>().increment();
                              myController.increment(); // 10 - 02
                            })
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
