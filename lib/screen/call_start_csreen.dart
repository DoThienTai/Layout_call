import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class StartCall extends StatelessWidget {
  const StartCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(15.h), topLeft: Radius.circular(15.h)),
                color: Color(0xFF303034),
              ),
              margin: EdgeInsets.only(top: 460.h),
              width: 414.w,
              height: 393.h,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //Icon phone
                    Container(
                      margin:  EdgeInsets.only(
                        top: 45.h,
                        bottom: 37.h,
                        left: 186.w,
                        right: 186.w,
                      ),
                      height: 45.h,
                      width: double.infinity,
                      child: Image.asset("assets/image/icon_phone.png",),
                    ),
                    //Text name
                    Container(
                      height: 28.h,
                      width: 200.w,
                      child: Text(
                        'Call Jessica',
                        style: TextStyle(
                          color: Color(0xFFffffff),
                          letterSpacing: 1.3,
                          fontSize: 20.sp,
                          fontFamily: 'Roboto-Regular',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    //Text titile
                    Container(
                      margin:  EdgeInsets.only(bottom: 65.h, left: 32.w, right: 32.w,top: 10.h),
                      width: double.infinity,
                      height: 48.h,
                      child: Text(
                        'Would you like to start a call with the delivery recipient Jessica? ',
                        style: TextStyle(
                          color: Color(0xFF7e7e81),
                          fontFamily: 'Roboto-Light',
                          letterSpacing: 0.5,
                          fontSize: 16.sp,
                          height: 1.3.h,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    //button call/cancle
                    Container(
                      margin: EdgeInsets.only(
                          bottom: 20.h,
                          left: 21.w,
                          right: 21.w),
                      width: double.infinity,
                      height: 52.h,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/onCallScreen');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.h),
                                  color: Color(0xFF536dfe),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 15.h),
                                width: 180.w,
                                child: Text(
                                  'Start Call',
                                  style: TextStyle(color: Color(0xFFffffff),
                                    fontSize: 16.sp,
                                    letterSpacing: 1,
                                    fontFamily: 'Roboto-Regular',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                              },
                              child:
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFFffffff), width: 1.w,),
                                  borderRadius: BorderRadius.circular(100.h),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 15.h),
                                width: 180.w,
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(color: Color(0xFFffffff),
                                    fontSize: 16.sp,
                                    letterSpacing: 1,
                                    fontFamily: 'Roboto-Regular',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      height: 34.h,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(10.h),
                                color: Colors.white,
                              ),
                              height: 5.h,
                              width: 173.w,
                              child: SizedBox()
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
