
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  bool _switchValue = false;
  late GoogleMapController mapController;
  CameraPosition _cameraPosition =
  CameraPosition(target: LatLng(21.0434196,105.8692743), zoom: 18);

  List<Marker> _markers = [];

  @override
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
      _addMarkers();
    });
  }
  Future<void> _addMarkers() async {
    _markers.add(
      Marker(
        markerId: MarkerId('Mylocation'),
        position: LatLng(21.0434196,105.8692743),
        icon: await BitmapDescriptor.fromAssetImage(ImageConfiguration(),'assets/image/markerLocation.png',),
      ),
    );

    _markers.add(
      Marker(
        markerId: MarkerId('Marker_1'),
        position: LatLng(21.044219, 105.869749),
        icon: await BitmapDescriptor.fromAssetImage(ImageConfiguration(),'assets/image/Marker1.png',),
      ),
    );
    _markers.add(
      Marker(
        markerId: MarkerId('Marker_2'),
        position: LatLng(21.045226, 105.869998),
        icon: await BitmapDescriptor.fromAssetImage(ImageConfiguration(),'assets/image/Marker2.png',),
      ),
    );
    _markers.add(
      Marker(
        markerId: MarkerId('Marker_3'),
        position: LatLng(21.044566, 105.869310),
        icon: await BitmapDescriptor.fromAssetImage(ImageConfiguration(),'assets/image/Marker3.png',),
      ),
    );
    _markers.add(
      Marker(
        markerId: MarkerId('Marker_4'),
        position: LatLng(21.043827, 105.867981),
        icon: await BitmapDescriptor.fromAssetImage(ImageConfiguration(),'assets/image/Marker4.png',),
      ),
    );
    _markers.add(
      Marker(
        markerId: MarkerId('Marker_5'),
        position: LatLng(21.043318, 105.868224),
        icon: await BitmapDescriptor.fromAssetImage(ImageConfiguration(),'assets/image/Marker5.png',),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //top bar
              Container(
                height: 138.h,
                child: Column(
                  children: [
                    //Status bar
                    Expanded(
                      child: Container(
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
                                  children: [
                                    Container(
                                      height: 14.h,
                                      width: 20.w,
                                      margin: EdgeInsets.only(right: 2.h),
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
                    ),
                    Expanded(
                      child: Container(
                        //padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                        margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 5.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 36.h,
                              width: 36.w,
                              child: Image.asset("assets/image/icon_menu.png", ),
                            ),
                            // Container(
                            //   height: 36,
                            //   width: 36,
                            //   child: Switch(
                            //     value: _switchValue,
                            //     activeColor: Colors.white,
                            //     activeTrackColor: Colors.lightGreenAccent,
                            //     inactiveThumbColor: Colors.white12,
                            //     inactiveTrackColor: Colors.grey[200],
                            //     onChanged: (value) {
                            //       setState(() {
                            //         _switchValue = value;
                            //       });
                            //     },
                            //   ),
                            // ),
                            Container(
                              width: 48.w,
                              height: 32.h,
                              child: Image.asset("assets/image/Power.png",),
                            ),
                            Container(
                              height: 36.h,
                              width: 36.w,
                              child: Image.asset("assets/image/MapView.png", ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    height: 42.h,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Today\'s tasks",
                                        style: TextStyle(
                                          color: Color(0xFFffffff),
                                          fontSize: 16.sp,
                                          letterSpacing: 1,
                                          fontFamily: 'Roboto-Regular',
                                        )
                                    ),
                                  ),
                                  Container(
                                    color: Colors.white,
                                    height: 2.h,
                                    width: double.infinity,
                                    child: SizedBox(),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                    "All tasks",
                                    style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 16.sp,
                                      letterSpacing: 1,
                                      fontFamily: 'Roboto-Regular',
                                    )
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //ggmap
              Expanded(
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                        child: GoogleMap(
                          initialCameraPosition: _cameraPosition,
                          zoomControlsEnabled: false,
                          onMapCreated: _onMapCreated,
                          mapType: MapType.normal,
                          markers:Set<Marker>.of(_markers),

                        ),
                      ),
                      Positioned(
                        bottom: 10.h,
                        right: 10.w,
                        child: Container(
                          height: 45.h,
                          width: 45.w,
                          child: Image.asset("assets/image/DriverMap3.png",fit: BoxFit.cover,),
                      ),),
                      Positioned(
                        bottom: 55.h,
                        right: 10.w,
                        child: Container(
                          height: 45.h,
                          width: 45.w,
                          child: Image.asset("assets/image/DriverMap2.png",fit: BoxFit.cover,),
                        ),),
                      Positioned(
                        bottom: 100.h,
                        right: 10.w,
                        child: Container(
                          height: 45.h,
                          width: 45.w,
                          child: Image.asset("assets/image/DriverMap1.png",fit: BoxFit.cover,),
                        ),),
                      Positioned(
                        bottom: 145.h,
                        right: 10.w,
                        child: Container(
                          height: 45.h,
                          width: 45.w,
                          child: Image.asset("assets/image/DriverMap.png",fit: BoxFit.cover,),
                        ),),
                    ],
                  ),
                ),
              ),
              //bottom bar
              Container(
                height: 88.h,
                margin: EdgeInsets.only(right: 62.w,left: 58.w),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 91.w,
                            height: 32.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 32.h,
                                  width: 32.w,
                                  child: Image.asset("assets/image/MapView1.png",),
                                ),
                                Text("Tasks",
                                    style: TextStyle(color: Color(0xFFffffff),
                                      fontSize: 18.sp,
                                      letterSpacing: 1,
                                      fontFamily: 'Roboto-Regular',
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            width: 91.w,
                            height: 32.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 22.h,
                                  width: 22.w,
                                  child: Image.asset("assets/image/chats.png",),
                                ),
                                Text("Chats",
                                    style: TextStyle(color: Color(0xFF9B9B9B),
                                      fontSize: 18.sp,
                                      letterSpacing: 1,
                                      fontFamily: 'Roboto-Regular',
                                    ))
                              ],
                            ),
                          ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
