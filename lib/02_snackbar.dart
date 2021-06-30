import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SnackBar_02 {
  static show() {
    // Get.snackbar("SnackBar Title", "SnackBar Message");
    Get.snackbar(
      "Title",
      "Message",

      /* titleText: Text(
        "Title",
        style: TextStyle(fontSize: 24, color: Colors.black54),
      ),      
      messageText: Text(
        "Message",
        style: TextStyle(fontSize: 24, color: Colors.black87),
      ), */

      // colorText: Colors.black87,
      // borderRadius: 30,
      // margin: EdgeInsets.all(16),
      // maxWidth: 250.w,

      // animationDuration: Duration(seconds: 5),

      /* backgroundGradient: LinearGradient(colors: [
        Colors.red,
        Colors.green,
      ]), */ // when backgroundGradient is specified, backGroundColor will not have effect

      /* borderColor:
          Colors.grey, // when using borderColor ensure that borderWidth is set
      borderWidth: 1.0,*/

      /* boxShadows: [
        BoxShadow(
            color: Colors.grey.shade400,
            offset: Offset(10, -10),
            blurRadius: 8,
            spreadRadius: 20)
      ], */

      /* isDismissible: true, //default true
      dismissDirection: SnackDismissDirection.HORIZONTAL, */

      // forwardAnimationCurve: Curves.bounceInOut, // applied when snackbar will be displayed
      // duration: Duration(milliseconds: 8000),

      /* icon: Icon(
        Icons.send,
        color: Colors.red,
      ),
      shouldIconPulse: true,*/ //default true

      // leftBarIndicatorColor: Colors.red,

      /* mainButton: TextButton(
        onPressed: () {
          print("main button clicked");
        },
        child: Text("Main Button"),
        style: TextButton.styleFrom(
          backgroundColor: Colors.blue.shade300,
        ),
      ),*/

      /*onTap: (val) {
        print("snackbar clicked");
      },*/

      /* overlayBlur: 5,
      overlayColor: Colors.blue.shade100, //work with overlayBlur */

      // padding: EdgeInsets.all(50),

      /* showProgressIndicator: true, // default false
      progressIndicatorBackgroundColor:
          Colors.grey, //work with showProgressIndicator
      progressIndicatorValueColor: AlwaysStoppedAnimation<Color>(Colors.white), */

      /* reverseAnimationCurve:
          Curves.bounceInOut, // applied when snackbar will be hided */

      /* snackbarStatus: (val) {
        print(val);
      }, */

      /* userInputForm: Form(
        child: Row(
          children: [
            Expanded(
              child: TextField(),
            )
          ],
        ),
      ), // all other wdgets will be hided */

      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
