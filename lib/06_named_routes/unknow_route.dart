import 'package:flutter/material.dart';

class UnknowRoute extends StatelessWidget {
  const UnknowRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unknow Route"),
      ),
      body: Center(
        child: Text("Unknow Route"),
      ),
    );
  }
}
