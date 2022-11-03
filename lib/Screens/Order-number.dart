import 'dart:async';

import 'package:delivery_rider/Screens/Order_success.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Order_number extends StatefulWidget {
  const Order_number({Key? key}) : super(key: key);

  @override
  State<Order_number> createState() => _Order_numberState();
}

class _Order_numberState extends State<Order_number> {

  Completer<GoogleMapController> _controller=Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(33.65192994,73.08141522),
    zoom: 16.4746,
  );
  List<Marker> _marker=[];
  List<Marker> _list=const[
    Marker (markerId:MarkerId('1'),
        position: LatLng(33.65192994,73.08141522),
        infoWindow:InfoWindow(title: 'My Current Location')
    )
  ];
  @override
  void initState() {
    _marker.addAll(_list );
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:  Size(0, 70.r),
        child: Padding(
          padding:  EdgeInsets.only(top: 30.h),
          child: AppBar(elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading:IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: () { Get.back(); },) ,
            centerTitle: true,
            title: Text("Order #3234",style: TextStyle(color: Colors.black),),

          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 13.w,right: 13.w),
        child: Column(
          children: [
            SizedBox(height: 10.h,),
            Expanded(
              child: Container(child: GoogleMap(initialCameraPosition: _kGooglePlex,
                mapType: MapType.normal,
                //mapType: MapType.satellite,
               // mapType: MapType.hybrid,
                compassEnabled: true,
                myLocationEnabled: true,
                markers: Set<Marker>.of(_marker),
                zoomControlsEnabled: false,

                onMapCreated: (GoogleMapController controller){
                  _controller.complete(controller);
                },
              ),

              ),
            ),
            SizedBox(height: 15.h,),
            Row(
              children: [
                SizedBox(
                  width: 8.w,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 10.w,
                      top: 15.h,
                      right: 10.w,
                      bottom: 15.h),
                  child: CircleAvatar(
                      backgroundColor:  Color(0x1dffa800),
                      radius: 20.r,
                      child: Padding(
                          padding:
                           EdgeInsets.all(6.0.r),
                          child: Icon(
                            Icons.location_on_outlined,
                            color: Color(0xffffa800),
                          ))),
                ),
                SizedBox(
                  width: 20.w,
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Jessica Simpson',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        '2811 Crscent Day,la pot',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Califonia United State,775771',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        '+1 203 555 3456',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                SizedBox(height: 50.h,width: 50.w,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Color(0xffffa800),
                    textColor: Colors.white,
                    child: Icon(
                      Icons.call,
                      size: 25.sp,
                    ),
                    padding: EdgeInsets.all(4.r),
                    shape: CircleBorder(),
                  ),
                )
              ],
            ),
            Divider(),
            SizedBox(height: 10.h,),
            Padding(
              padding: EdgeInsets.only(left: 14.w,right: 14.w),
              child: Row(children: [

                Icon(Icons.map,color: Colors.grey,),
                SizedBox(width: 14.w,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Distance",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
                  Text("2.1 km",style: TextStyle(color: Colors.black),),

                ],),
                  Spacer(),
Container(color: Colors.grey.shade400,width: 1.w,height: 50.h,),
                 Spacer(),
                Icon(Icons.access_time,color: Colors.grey,),
                SizedBox(width: 14.w,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Time",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
                    Text("14 minutes",style: TextStyle(color: Colors.black),),

                  ],),
              ],),
            ),
SizedBox(height: 10.h,),
Container(width: 350.w,height: 60.h,
    child: ElevatedButton(onPressed: (){Get.to(()=>Order_succerss());},style: ElevatedButton.styleFrom(
        primary:  Color(0xffffa800),
        shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(8.r),
        ),
        elevation: 1.0, ),child: Text("Start Order",style: TextStyle(color: Colors.white),))),
            SizedBox(height: 10.h,)
          ],
        ),
      ),
    );
  }
}
