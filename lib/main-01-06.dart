import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_training/03_show_dialog.dart';
import 'package:getx_training/04_bottomsheet_dynamictheme.dart';
import 'package:getx_training/05_unamed_routes.dart';
import 'package:getx_training/06_named_routes/06_named_routes.dart';
import 'package:getx_training/06_named_routes/next_screen.dart';
import 'package:getx_training/06_named_routes/unknow_route.dart';
import './02_snackbar.dart';
import 'widgets/custom_text_button.dart';
import 'home-01-06.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: () => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Navigation", // 06
          initialRoute: "/", // 06
          defaultTransition: Transition.zoom, // 06
          getPages: [
            GetPage(name: "/", page: () => MyApp()),
            GetPage(name: "/home", page: () => NamedRoutes_06()),
            GetPage(
              name: "/nextscreen",
              page: () => NextScreen(),
              transition: Transition.leftToRight,
            ),
            /*GetPage(
              name: "/nextscreen/:someValue",
              page: () => NextScreen(),
              transition: Transition.leftToRight,
            ), */ // 06 - 02
          ],
          unknownRoute:
              GetPage(name: '/notfound', page: () => UnknowRoute()), // 06 - 03
          // 06
          home: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: const Text("Main Page "),
              ),
              body: Center(
                child: Wrap(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: SizedBox(
                        height: 36.h,
                        width: 180.w,
                        child: CustomTextButton(
                            text: //"Goto Home",
                                // "Show SnackBar", //02
                                // "Show Dialog",  //03
                                // "Bottom Sheet", //04
                                "Goto Home", //05
                            onPressed: () {
                              //Get.to(Home()),
                              // SnackBar_02.show(),
                              // ShowDialog_03.Show(),
                              // BottomSheet_DynamicTheme_04.show(),
                              /* Get.to(
                            UnamedRoutes_05(),
                            // transition: Transition.zoom,
                            // duration: Duration(milliseconds: 1000),
                            // curve: Curves.bounceInOut,
                            // fullscreenDialog: true,
                          ), */

                              // Get.off(UnamedRoutes_05())),
                              // Get.offAll(UnamedRoutes_05()),

                              /* Get.to(UnamedRoutes_05(),
                                  arguments: "Data From Main"), */
                              /* var data = await Get.to(UnamedRoutes_05());
                              print(data); */ // 05

                              // 06
                              Get.toNamed("/home");
                              // Get.offNamed("/home");
                              // Get.offAllNamed("/home");
                              /* Get.toNamed(
                                  "/home?channel=Ripples Code&content=Flutter Getx");*/ // 06 - 01
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
