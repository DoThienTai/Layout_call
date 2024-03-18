import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout_call/widget/custom_day.dart';
import 'package:intl/intl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateRange extends StatefulWidget {
  const DateRange({super.key});

  @override
  State<DateRange> createState() => _DateRangeState();
}

class _DateRangeState extends State<DateRange> {
  DateTime currentDate = DateTime.now();

  List<String> numberCalendar = [
    "28", "29", "30", "1", "2", "3", "4",
    "5", "6", "7", "8", "9", "10", "11",
    "12", "13", "14", "15", "16", "17", "18",
    "19", "20", "21", "22", "23", "24", "25",
    "26", "27", "28", "29", "30", "31", "1",
  ];
  List<int> _clickCountList = List.generate(35, (index) => 0);
  void changeYear(bool increase) {
    setState(() {
      if (increase) {
        currentDate = DateTime(currentDate.year, currentDate.month + 1);
      } else {
        currentDate = DateTime(currentDate.year, currentDate.month - 1);
      }
    });
  }

  void  _toggedSelected (int index){
    setState(() {
      _clickCountList[index]++;
      if (_clickCountList[index] == 3) {
        _clickCountList[index] = 0;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(top: 32.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.maxFinite,
              height: 130.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //status bar
                  Container(
                    height: 44.h,
                    margin:
                    EdgeInsets.only(left: 30.w, right: 10.w),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 14.h,
                                  width: 20.w,
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
                  //title top
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 273.w,
                      height: 54.h,
                      margin: EdgeInsets.only(left: 20.w,top: 14.h,),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap:() {
                              Navigator.pushNamed(context, '/mapScreen');
                            },
                            child: Container(
                              width: 28.w,
                              height: 28.h,
                              child: Image.asset("assets/image/icon_arrowup.png", fit: BoxFit.fill,),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Date range",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Color(0xFFffffff),
                                fontSize: 20.sp,
                                letterSpacing: 1.3,
                                fontFamily: 'Roboto-Regular',
                              )),
                              SizedBox(height: 4.h,),
                              Text("Jun 08, 2020 - Jun 11, 2022",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Color(0xFFffffff),
                                  fontSize: 16.sp,
                                  letterSpacing: 1,
                                  fontFamily: 'Roboto-Light',),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xFF3f4244),
                    margin: EdgeInsets.only(top: 16.h),
                    height: 1.h,
                    width: double.infinity,
                    child: SizedBox(),
                  )
                ],
              ),
            ),
            //table calendar
            Container(
              height: 356.h,
              padding: EdgeInsets.symmetric(horizontal: 23.w),
              margin: EdgeInsets.only(top: 30.h),
              child: Column(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: 32.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(onTap: () {
                            changeYear(false);
                          },child: Icon(Icons.arrow_back_ios_new, color: Color(0xFFffffff),)),
                          Container(
                            width: 180.w,
                            height: 32.h,
                            child: Center(
                              child: Text('${DateFormat('MMMM').format(currentDate)} ${currentDate.year}',
                                style: TextStyle(color: Color(0xFFffffff),
                                fontSize: 20.sp,
                                letterSpacing: 1.3,
                                fontFamily: 'Roboto-Regular', ),
                              ),
                            ),
                          ),
                          GestureDetector(onTap: () {
                            changeYear(true);
                          },child: Icon(Icons.arrow_forward_ios, color: Color(0xFFffffff),)),
                        ],
                      ),
                    ),
                    Container(
                      height: 324.h,
                      padding: EdgeInsets.only(top: 10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 314.h,
                            child: GridView.builder(
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 7,
                                  crossAxisSpacing: 3,
                                  mainAxisSpacing: 8,
                                ),
                                itemCount: numberCalendar.length,
                                itemBuilder: ( BuildContext context, int index) {
                                  bool isBorderVisible = _clickCountList[index] == 1;
                                  bool isBackgroundColorVisible = _clickCountList[index] == 2;
                                  return GestureDetector(
                                    onTap: () => _toggedSelected(index),
                                    child: Container(
                                      width: 48.w,
                                      height: 48.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(4.h)),
                                        border:  isBorderVisible ? Border.all(color: Colors.blueAccent, width: 1) : null,
                                        color:  isBackgroundColorVisible ? Colors.blue : null,
                                      ),
                                      child: Center(child: Customday(day: numberCalendar[index])),
                                    ),
                                  );
                                },),
                          )
                        ],
                      ),
                    )
                  ],
              ),
            ),
            //Button click
            Container(
              height: 300.h,
              padding: EdgeInsets.symmetric(horizontal: 23.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 52.h,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.h),
                          color: Color(0xFF536dfe),
                        ),
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                              color: Color(0xFFffffff),
                              fontSize: 16.sp,
                              letterSpacing:  1,
                              fontFamily: "Roboto-Regular",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Container(
                    height: 52.h,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFffffff),
                            width: 1.w,
                          ),
                          borderRadius: BorderRadius.circular(100.h),
                        ),
                        width: double.infinity,
                        child:  Center(
                          child: Text(
                            'Clear All',
                            style: TextStyle(
                              color: Color(0xFFffffff),
                              fontSize: 16.sp,
                              fontFamily: "Roboto-Regular",
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
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
          ],
        ),
      )
    );
  }
}
