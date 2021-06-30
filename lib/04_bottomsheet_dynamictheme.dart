import 'package:get/get.dart';
import 'package:flutter/material.dart';

class BottomSheet_DynamicTheme_04 {
  static show() {
    Get.bottomSheet(
      Container(
        child: Wrap(
          children: [
            ListTile(
              leading: Icon(Icons.wb_sunny_outlined),
              title: Text("Light Theme"),
              onTap: () {
                Get.changeTheme(ThemeData.light());
                Get.back();
              },
            ),
            ListTile(
              leading: Icon(Icons.wb_sunny),
              title: Text("Dark Theme"),
              onTap: () {
                Get.changeTheme(ThemeData.dark());
                Get.back();
              },
            ),
          ],
        ),
      ),
      // barrierColor: Colors.green.shade100,
      // backgroundColor: Colors.purple.shade100,
      // isDismissible: true, //default true
      /*shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: Colors.grey,
          width: 1,
          style: BorderStyle.solid,
        ),
      ),*/
      //enableDrag: true, // default true
    );
  }
}
