import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowDialog_03 {
  static Show() {
    //Get.defaultDialog();
    Get.defaultDialog(
        title: "Title Dialog",
        titleStyle: TextStyle(fontSize: 18),
        middleText: "Middle Text !!!",
        middleTextStyle: TextStyle(fontSize: 16),
        backgroundColor: Colors.green.shade100,
        radius: 20,
        content: Row(
          children: [
            CircularProgressIndicator(),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              child: Text("Data Loading"),
            )
          ],
        ), // middleText will be hidden

        /*textCancel: "Cancel",
      cancelTextColor: Colors.green.shade900,
      textConfirm: "Confirm",
      confirmTextColor: Colors.red.shade600,
      onCancel: () {
        print("Cancel Button");
        // leave dialog without Get.back()
      },
      onConfirm: () {
        print("Confirm Button");
        Get.back(); // to leave dialog
      },
      buttonColor: Colors.green,*/

        /*confirm: Row(children: [
        Icon(Icons.check),
        Text("Confirm"),
      ]),
      cancel: Row(
        children: [
          Icon(Icons.cancel),
          Text("Cancel"),
        ],
      ),*/

        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Confirm"),
          ),
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Cancel"),
          ),
        ],
        barrierDismissible: false // by default true
        );
  }
}
