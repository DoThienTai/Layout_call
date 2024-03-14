
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticItemWidget extends StatelessWidget {
  final String img;
  final String text;
  final String value;
  const StatisticItemWidget(
      {super.key, required this.img, required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 178.w,
      height: 130.h,
      padding: EdgeInsets.all(13.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.h)),
        color: Colors.white12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(img,
            width: 28.w,
            height: 28.h,
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 54.h  ,
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  text,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white12,
                    fontSize: 16.sp,
                    letterSpacing: 1,
                    fontFamily: 'Roboto-Light',
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(value,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
