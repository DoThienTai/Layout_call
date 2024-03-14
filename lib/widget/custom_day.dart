import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customday extends StatelessWidget {
  final String day;
  const Customday({super.key, required this.day});
  @override
  Widget build(BuildContext context) {
    return Text(
      day,
      style: TextStyle(
        color: Color(0xFFffffff),
        fontSize: 18.sp,
        letterSpacing: 0.2,
        fontFamily: "Roboto-Light"
      ),
    );
  }
}
