import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PinkPassport extends StatefulWidget {
  const PinkPassport({super.key});

  @override
  State<PinkPassport> createState() => _PinkPassportState();
}

class _PinkPassportState extends State<PinkPassport> {
  final List<Map<String, dynamic>> data = [
    {
      'image':'assets/image/tutoria1.png',
      'text': 'Please turn on the screen recording function',
    },
    {
      'image':'assets/image/tutorial2.png',
      'text': 'Please access My page in the SMTOWN app. (E-mail address must be displayed correctly.)',
    },
    {
      'image':'assets/image/tutorial3.png',
      'text': 'After launching the camera app, take a picture of the member information on the fist page of PINK PASSPORT.',
    },
    {
      'image':'assets/image/tutorial4.png',
      'text': 'Please take a picture of the actual passport stamp page for seconds each',
    },
    {
      'image':'assets/image/tutorial5.png',
      'text': 'Please update the file after saving the screen recording.',
    }
  ];

  int _currentIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);

    // Auto scroll images
    _autoScroll();
  }
  void _autoScroll() {
    Future.delayed(Duration(seconds: 3), () {
      if (_currentIndex < data.length - 1) {
        _pageController.animateToPage(_currentIndex + 1,
            duration: Duration(milliseconds: 500), curve: Curves.ease);
      } else {
        _pageController.animateToPage(0,
            duration: Duration(milliseconds: 500), curve: Curves.ease);
      }
      _autoScroll();
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget _buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: _currentIndex == index ? 5.0 : 5.0,
      height: _currentIndex == index ? 5.0 : 5.0,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentIndex == index ? Colors.black : Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 32.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //stasus bar
            Container(
              height: 44.h,
              margin: EdgeInsets.only(left: 24.w, right: 24.w),
              width: double.infinity,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 35.w,
                      child: Text(
                        "12:00",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Container(
                      width: 57.w,
                      height: 44.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 10.h,
                            width: 9.w,
                            margin: EdgeInsets.only(right: 2.h),
                            child: Image.asset(
                              "assets/image/3G.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            height: 10.h,
                            width: 14.w,
                            margin: EdgeInsets.only(right: 2.w),
                            child: Image.asset(
                              "assets/image/Wifi.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            height: 10.h,
                            width: 18.w,
                            margin: EdgeInsets.only(right: 2.w),
                            child: Image.asset(
                              "assets/image/battery.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            //Main
            Container(
              height: 812.h,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   //navigation top
                   Container(
                     height: 48.h,
                     margin: EdgeInsets.only(left: 24.h),
                     child: Row(
                       children: [
                         GestureDetector(
                             onTap: () {
                               Navigator.pop(context);
                             },
                             child: Icon(Icons.arrow_back_ios)),
                         SizedBox(width: 15.w,),
                         Text("PINK PASSPORT",
                           style: TextStyle(
                             fontSize: 17.sp,
                             color: Colors.black,
                             fontFamily:'Roboto-Bold',
                           ),
                         )
                       ],
                     ),
                   ),
                   //Content view
                   Container(
                     height: 730.h,
                     margin: EdgeInsets.only(left: 24.w,right: 24.w),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         //Card Title
                         Container(
                           height: 93.h,
                           padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 24.w),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(10.h)),
                             gradient: LinearGradient(
                               begin: Alignment.bottomLeft,
                               end: Alignment.topRight,
                               colors: [Color(0xFFF6DEFE), Color(0xFFF55C7A)],
                             ),
                           ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Container(
                                 width: 227,
                                 height: 53,
                                 child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Text("DIGITAL PINK-PASSPORT",
                                       style: TextStyle(
                                         fontSize: 18.sp,
                                         color: Color(0xFFE36297),
                                         fontFamily:'Roboto-Bold',
                                         letterSpacing: 0.5
                                       ),
                                     ),
                                     Text("Check your history",
                                       style: TextStyle(
                                         fontSize: 16.sp,
                                         color: Colors.black,
                                         fontFamily:'Roboto-Regular',
                                       ),
                                     )
                                   ],
                                 ),
                               ),
                               Container(
                                 width: 32.h,
                                 height: 32.h,
                                 child: Image.asset("assets/image/Logout.png",fit: BoxFit.cover,),
                               ),
                             ],
                           ),
                         ),
                         //slider
                         Container(
                           height: 573.h,
                           child: Column(
                             children: [
                               //title
                               Container(
                                 height: 27.h,
                                 width: double.maxFinite,
                                 margin: EdgeInsets.only(top: 30.h),
                                 child: Text(
                                   'Pink Passport Application Guide',
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontSize: 20.sp,
                                     fontFamily: "Roboto-Bold",
                                   ),
                                 ),
                               ),
                               //slider
                               Container(
                                 height: 470.h,
                                   margin: EdgeInsets.only(top: 16.h),
                                   child: PageView.builder(
                                    itemCount: data.length,
                                    controller:  _pageController,
                                    onPageChanged: (int index) {
                                      setState(() {
                                        _currentIndex = index;
                                      });
                                    },
                                    itemBuilder: (BuildContext context, int index) {
                                      return Column(
                                        children: [
                                          Container(
                                            height: 323,
                                            child: Image.asset(data[index]['image'],),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 16.h,bottom: 16.h),
                                            height: 100.h,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(8.h)),
                                              color: Color(0xFFF3F3F3),
                                            ),
                                            child: Row(
                                              children: [
                                                SizedBox(width: 12.w,),
                                                Icon(Icons.check_outlined, color: Colors.black, size: 24),
                                                SizedBox(width: 12.w,),
                                                Container(
                                                  width: 269.w,
                                                  child: Text(data[index]['text'],
                                                    softWrap: true,
                                                    overflow: TextOverflow.visible,
                                                    style: TextStyle(
                                                      fontFamily: 'Roboto-Regular',
                                                      fontSize: 16.sp,
                                                      height: 1.1.h,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      );
                                    },
                                  ),
                               ),
                               //pagination
                               Container(
                                 margin: EdgeInsets.only(bottom: 20.h),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: List.generate(data.length, (index) => _buildDot(index),),
                                 ),
                               ),
                             ],
                           ),
                         ),
                         //button
                         InkWell(
                           onTap: () {},
                           child: Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(100.h),
                               color: Colors.black
                             ),
                             width: double.infinity,
                             height: 48,
                             margin: EdgeInsets.only( bottom:16.h ),
                             child:  Center(
                               child: Text(
                                 'Apply',
                                 style: TextStyle(
                                   color: Color(0xFFffffff),
                                   fontSize: 20.sp,
                                   fontFamily: "Roboto-Regular",
                                   letterSpacing: 1,
                                 ),
                               ),
                             ),
                           ),
                         )
                       ],
                     ),
                   ),
                   //home indicator
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
                               color: Colors.black,
                             ),
                             height: 6.h,
                             width: 135.w,
                             child: SizedBox()
                         ),
                         SizedBox(height: 8.h,)
                       ],
                     ),
                   ),
                 ],
               ),
            ),
          ],
        ),
      ),
    );
  }
}
