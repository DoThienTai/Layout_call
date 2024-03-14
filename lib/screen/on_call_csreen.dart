import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnCallScreen extends StatefulWidget {
  const OnCallScreen({super.key});

  @override
  State<OnCallScreen> createState() => _OnCallScreenState();
}

class _OnCallScreenState extends State<OnCallScreen> {
  Timer? _timer;
  int _seconds = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer?.cancel();
    super.dispose();
  }
  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [Color(0xFFFF8000), Color(0xFF536DFE)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            constraints: BoxConstraints.expand(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Status bar
                        Container(
                          height: 44.h,
                          margin:
                              EdgeInsets.only(left: 15.w, right: 10.w),
                          width: double.infinity,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 28.w,
                                  child: Text(
                                    "9:41",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Container(
                                  width: 75.w,
                                  height: 14.h,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 14.h,
                                        width: 20.w,
                                        margin: EdgeInsets.only(right: 2.w),
                                        child: Image.asset("assets/image/icon_network.png", fit: BoxFit.fill,),
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Container(
                                        height: 14.h,
                                        width: 16.w,
                                        margin: EdgeInsets.only(right: 2.w),
                                        child: Image.asset("assets/image/icon_wifi.png", fit: BoxFit.fill,),
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Container(
                                        height: 14.h,
                                        width: 25.w,
                                        margin: EdgeInsets.only(right: 2.w),
                                        child: Image.asset("assets/image/icon_battery.png", fit: BoxFit.fill,),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                        //icon arrow-up
                        GestureDetector(
                          onTap:() {
                            Navigator.pushNamed(context, '/driverScreen');
                          },
                          child: Container(
                            margin:
                                EdgeInsets.only(bottom: 15.h, left: 15.w, right: 28.w),
                            width: 28.w,
                            height: 28.h,
                            child: Image.asset("assets/image/icon_arrowup.png", fit: BoxFit.fill,),
                          ),
                        ),
                        //Text name
                        Container(
                          width: 139.w,
                          height: 40.h,
                          margin: EdgeInsets.only(bottom: 8.h, left: 139.w),
                          child: Center(
                            child: Text(
                              'Jessica',
                              style: TextStyle(
                                color: Color(0xFFffffff),
                                fontSize: 28.sp,
                                letterSpacing: 1.3,
                                fontFamily: 'Roboto-Bold',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 55.w,
                          height: 24.h,
                          margin: EdgeInsets.only(bottom: 175.h, left: 181.w),
                          child: Center(
                            child: Text(
                              '${formatTime(_seconds)}',
                              style: TextStyle(
                                color: Color(0xFFffffff),
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(bottom: 35.h,right: 10.w,left: 10.w),
                                    width: double.maxFinite,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.end ,
                                      children: [
                                        //icon button call
                                        Container(
                                          width: 91.w,
                                          height: 121.h,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 91.w,
                                                height: 121.h,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(60.h)),
                                                ),
                                                child: Image.asset("assets/image/icon_mute.png", fit: BoxFit.fill,),
                                              ),
                                            ],
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            width: 91.w,
                                            height: 121.h,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 91.w,
                                                  height: 91.h,
                                                  decoration:  BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(60.h)),
                                                  ),
                                                  child: Image.asset("assets/image/icon_phone1.png", fit: BoxFit.fill,),
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                const Text(
                                                  "end call",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Roboto-Light',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 91.w,
                                          height: 121.h,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 91.w,
                                                height: 121.h,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(60.h)),
                                                ),
                                                child: Image.asset("assets/image/icon_speaker.png", fit: BoxFit.fill,),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.h),
                                        color: Colors.white,
                                      ),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 50.w),
                                      width: 173.w,
                                      height: 5.h,
                                      child: SizedBox(),
                                    ),
                                  ),
                                  SizedBox(height: 5.h,)
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
