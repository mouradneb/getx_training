import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnamedRoutes_05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Unamed Routes"),
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    // Get.back();
                    Get.back(result: "Returned data");
                  },
                  child: Text("Back to main page"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 20),
                    ),
                  )),
              Text(Get.arguments ?? "")
            ],
          ),
        ),
      ),
    );
  }
}
