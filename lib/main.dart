import 'package:fantips/splash_screen/splash%20screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        SystemChrome.setPreferredOrientations(
            [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
        return  GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primaryColor: Colors.black),
          home:  Splashscreen(),
        );
      },
    );
  }
}
