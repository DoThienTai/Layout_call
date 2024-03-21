import 'package:flutter/material.dart';
import 'package:layout_call/screen/call_start_csreen.dart';
import 'package:layout_call/screen/date_range_screen.dart';
import 'package:layout_call/screen/driver_stats.dart';
import 'package:layout_call/screen/map_screen.dart';
import 'package:layout_call/screen/on_call_csreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:layout_call/screen/pink_passport_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(406, 888),
        builder: (_,child){
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: PinkPassport(),
              // initialRoute: '/',
              // routes: {
              //   // When navigating to the "/" route, build the HomeScreen widget.
              //   '/': (context) => StartCall(),
              //   // When navigating to the "/second" route, build the SecondScreen widget.
              //   '/onCallScreen': (context) => OnCallScreen(),
              //   '/driverScreen': (context) => DriverStats(),
              //   '/dateRange': (context) => DateRange(),
              //   '/mapScreen': (context) => MapScreen(),
              //   '/pinkPassport': (context) => PinkPassport(),
              // }
          );
        }
    );
  }
}

