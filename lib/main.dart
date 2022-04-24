import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shopzler/controller/helper/binding.dart';
import 'package:shopzler/view/widgets/test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => ScreenUtilInit(
        designSize: orientation == Orientation.portrait
            ? Size(375, 812)
            : Size(812, 375),
        builder: (BuildContext context) => GetMaterialApp(
          initialBinding: Binding(),
          theme: ThemeData(
            fontFamily: 'SourceSansPro',
          ),
          home: Splash_Screen(),
          debugShowCheckedModeBanner: false,
          title: 'E-Commerce',
        ),
      ),
    );
  }
}
