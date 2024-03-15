import 'package:flutter/material.dart';
import 'package:layout_call/widget/statistic_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DriverStats extends StatelessWidget {
  const DriverStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [Color(0xFFFF8000), Color(0xFF536DFE)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Status bar
                Container(
                  height: 17.h,
                  margin: EdgeInsets.only(bottom: 25.h, left: 30.w, right: 10.w),
                  width: double.infinity,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 14.w,
                                width: 20.h,
                                margin: EdgeInsets.only(right: 2.w),
                                child: Image.asset("assets/image/icon_network.png", fit: BoxFit.fill,),
                              ),
                              Container(
                                height: 14.h,
                                width: 16.w,
                                margin: EdgeInsets.only(right: 2.w),
                                child: Image.asset("assets/image/icon_wifi.png", fit: BoxFit.fill,),
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
                //icon menu, title
                Container(
                  padding: EdgeInsets.only(left: 13.w, right: 10.w),
                  width: double.infinity,
                  height: 40.h,
                  child: Row(
                    children: [
                      Container(
                        height: 36.h,
                        width: 36.w,
                        child: Image.asset("assets/image/icon_menu.png", fit: BoxFit.fill,),
                      ),
                      SizedBox(
                        width: 115.w,
                      ),
                      Container(
                        height: 28.h,
                        width: 83.h,
                        alignment: Alignment.center,
                        child: Text(
                          "Statistic",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            letterSpacing: 1.3,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Text title, number
                Container(
                  width: double.infinity,
                  height: 180.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Traveled Distance",
                        style: TextStyle(
                          color: Colors.white12,
                          fontSize: 16.sp,
                          letterSpacing: 1,
                          fontFamily: 'Roboto-Light',
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "05.27 mi",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                //Statistic item
                Container(
                  width: double.infinity,
                  height: 1162.h,
                  decoration: BoxDecoration(
                      color: Color(0xFF303034),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.h),
                          topRight: Radius.circular(15.h))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20.h),
                        padding: EdgeInsets.only(left:  20.w,right: 20.w),
                        width: double.infinity,
                        height: 40.h,
                        child:  Row(
                          children: [
                            Text(
                              "Period :",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 195.w,),
                            Text(
                              "Select Dates",
                              style: TextStyle(
                                color: Color(0xFF536dfe),
                                fontSize: 13.sp,
                                letterSpacing: 1,
                                fontFamily: 'Roboto-Light',
                              ),
                            ),
                            SizedBox(width: 5.w,),
                            Icon(Icons.arrow_forward_ios, size: 15.h, color: Color(0xFF536dfe),),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.h,),
                      //Dates
                      Container(
                        padding: EdgeInsets.only(left: 20.w),
                        width: double.infinity,
                        height: 40.h,
                        child:ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              width: 124.w,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white12, width: 1.w),
                                borderRadius: BorderRadius.all(Radius.circular(23.h)),
                              ),
                              alignment: Alignment.center,
                              child: Text("Last Month",style: TextStyle( color: Colors.white12,fontFamily: 'Roboto-Light',)),
                            ),
                            Container(
                              width: 124.w,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white12, width: 1.w),
                                borderRadius: BorderRadius.all(Radius.circular(23.h)),
                              ),
                              alignment: Alignment.center,
                              child: Text("Custom day",style: TextStyle( color: Colors.white12,fontFamily: 'Roboto-Light',)),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/dateRange');
                              },
                              child: Container(
                                width: 124.w,
                                decoration:  BoxDecoration(
                                  color: Color(0xFF536dfe),
                                  borderRadius: BorderRadius.all(Radius.circular(23.h)),
                                ),
                                alignment: Alignment.center,
                                child: Text("Date Range", style: TextStyle(color: Colors.white, fontFamily: 'Roboto-Light',)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.h),color: Colors.white12,),
                        margin: EdgeInsets.symmetric(horizontal: 10.w),
                        height: 2.h,
                        width: double.infinity,
                        child: SizedBox(),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                          child:  Column(
                            children: [
                              Row(
                                children: [
                                  StatisticItemWidget(img:"assets/image/icon_bag.png", text: "Total Drops", value: "15"),
                                  SizedBox(width: 10.w,),
                                  StatisticItemWidget(img:"assets/image/Moving.png", text: "Traveled", value: "05.27 mi"),
                                ],
                              ),
                              SizedBox(height: 10.h,),
                              Row(
                                children: [
                                  StatisticItemWidget(img:"assets/image/Moving.png", text: "Moving", value: "03:40:25"),
                                  SizedBox(width: 10.w,),
                                  StatisticItemWidget(img:"assets/image/Stop.png", text: "Stopped", value: "00:35:43"),
                                ],
                              ),
                              SizedBox(height: 10.h,),
                              Row(
                                children: [
                                  StatisticItemWidget(img:"assets/image/timer.png", text: "On Duty", value: "04:01:37"),
                                  SizedBox(width: 10.w,),
                                  StatisticItemWidget(img:"assets/image/timer-pause.png", text: "Idled", value: "00:09:23"),
                                ],
                              ),
                              SizedBox(height: 10.h,),
                              Row(
                                children: [
                                  StatisticItemWidget(img:"assets/image/SuccessRate.png", text: "Success Rate", value: "90%"),
                                  SizedBox(width: 10.w,),
                                  StatisticItemWidget(img:"assets/image/FailureRate.png", text: "Failure Rate", value: "2%  "),
                                ],
                              ),
                              SizedBox(height: 10.h,),
                              Row(
                                children: [
                                  StatisticItemWidget(img:"assets/image/Products.png", text: "Successful Drops", value: "12"),
                                  SizedBox(width: 10.w,),
                                  StatisticItemWidget(img:"assets/image/Products1.png", text: "Failed Drops", value: "3"),
                                ],
                              ),
                              SizedBox(height: 10.h,),
                              Row(
                                children: [
                                  StatisticItemWidget(img:"assets/image/Tasks.png", text: "Average Time to Complete", value: "6.43 min"),
                                  SizedBox(width: 10.w,),
                                  StatisticItemWidget(img:"assets/image/store.png", text: "Average Time spent at the Hub", value: "13.08 min"),
                                ],
                              ),
                              SizedBox(height: 10.h,),
                              Row(
                                children: [
                                  StatisticItemWidget(img:"assets/image/Tasks.png", text: "On time Order Rate", value: "91%"),
                                  SizedBox(width: 10.w,),
                                  StatisticItemWidget(img:"assets/image/Tasks2.png", text: "Delayed Order Rate", value: "13%"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
