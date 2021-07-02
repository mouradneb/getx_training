import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_training/07_state_management_obx.dart';
import 'package:getx_training/08_obx_custom_class/08_obx_custom_class.dart';
import 'package:getx_training/09_separate_uicode_business/09_uicode_business_logic.dart';
import 'package:getx_training/widgets/custom_text_button.dart';

import '10-Getx_with_Controller_Type/10_getx_controller_type.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return // StateManagement_Obx_07()
        // ObxCustomClass_08();
        // UiCodeBusinessLogic_09();
        GetxControllerType_10();
  }
}
