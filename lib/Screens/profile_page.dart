
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widget/complete_order_two_widgets.dart';
import '../Widget/complete_order_widgets.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 400.h,
              width: 400.w,
              child:Padding(padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 20.h),
              child:  GridView.builder(
                itemCount: completeOrder.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  var orderComplete = completeOrder[index];
                  return    Container(
                    height: 200.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                        color:orderComplete.color,
                        borderRadius: BorderRadius.circular(5.r)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 40.h,),
                        Icon(orderComplete.icon,size: 50.sp,color: Colors.white,),
                        SizedBox(height: 40.h,),
                        Padding(padding: EdgeInsets.only(right: 20.w),
                        child: Text('Completed order',
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white
                          ),
                        ),),
                        Padding(padding: EdgeInsets.only(left: 16.w,top: 5 .h,right: 10.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(orderComplete.price,
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.white
                                ),
                              ),
                              SizedBox(width:70.w,),
                              Icon(Icons.arrow_forward,size: 15.sp,color: Colors.white,)
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
              )
            ),

            SizedBox(
                height: 400.h,
                width: 400.w,
                child:Padding(padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 20.h),
                  child:  GridView.builder(
                    itemCount: completeOrderSecond.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      var orderCompleteSecond = completeOrderSecond[index];
                      return    Container(
                        height: 200.h,
                        width: 160.w,
                        decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(5.r)
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 40.h,),
                            Icon(orderCompleteSecond.icon,size: 50.sp,color:orderCompleteSecond.color,),
                            SizedBox(height: 40.h,),
                            Padding(padding: EdgeInsets.only(right: 20.w),
                              child: Text('Completed order',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.black
                                ),
                              ),),
                            Padding(padding: EdgeInsets.only(left: 16.w,top: 5 .h,right: 10.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(orderCompleteSecond.price,
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Colors.black
                                    ),
                                  ),
                                  SizedBox(width:70.w,),
                                  Icon(Icons.arrow_forward,size: 15.sp,color: Colors.black,)
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                )
            ),
            SizedBox(height: 30.h,)
          ],
        ),
      )
    );
  }
}
