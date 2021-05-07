import 'dart:async';

import 'package:ecommerce_app/screens/tab.wrapper.dart';
import 'package:ecommerce_app/styles/app.styles.dart';
import 'package:ecommerce_app/styles/size.config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() { 
    super.initState();
    Timer(Duration(seconds: 2), ()=> Get.off(TabWrapper()));
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double size = SizeConfig.screenSize;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Icon(
                FlutterIcons.apple1_ant,
                color: black,
                size: size * 8,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SpinKitFadingCircle(
                    color: black,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
