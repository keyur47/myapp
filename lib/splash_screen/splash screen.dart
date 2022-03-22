import 'package:fantips/all_image_file/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:sizer/sizer.dart';
import '../homescreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () async {
        Get.to( Home());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              AllImage.splash,
              height: 100.h,
              width: 100.w,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 95.h,
              left: 42.w,
              child: SpinKitThreeBounce(
                color: Colors.grey,size: 10.w,
              ),
            )
          ],
        ),
      ],
    );
  }
}
