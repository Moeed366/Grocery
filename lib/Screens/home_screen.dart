import 'package:delivery_rider/Screens/Cancled_order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widget/cardwidget.dart';
import '../Widget/complete_order_two_widgets.dart';
import '../Widget/complete_order_widgets.dart';
import 'Completed_order.dart';
import 'Pending_order.dart';
import 'Ready_order.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.only(left: 20.w,top: 70.h,right: 30.w),
        child: SingleChildScrollView(
          child: Container(color: Colors.grey.shade100,
            child: Column(
              children: [
                Row(

                  children: [
                   SizedBox(
                     width: 250.w,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Center(
                           child: Stack(
                             clipBehavior: Clip.none,
                             children: [
                               CircleAvatar(
                                   radius: 40,
                                   backgroundColor: Colors.transparent,

                                   child:Container(
                                       padding: EdgeInsets.all(4),
                                       margin: EdgeInsets.all(1),
                                       decoration: BoxDecoration(
                                         color: Colors.white,
                                         shape: BoxShape.circle,
                                       ),
                                       child: ClipOval(
                                         child: Container(
                                           height: 90,
                                           width: 90,
                                           child: Image.asset(
                                             'assets/user.png',
                                             fit: BoxFit.cover,
                                           ),
                                         ),
                                       )
                                   )),
                               Positioned(
                                 bottom: 5,
                                 right: 6,
                                 child: InkWell(
                                   onTap: () {},
                                   child:  Center(
                                     child: CircleAvatar(
                                       backgroundColor: Color(0xff0f9a12),
                                       radius: 14.0,
                                       child: Center(child: Icon(Icons.camera_alt,color: Colors.white,size: 16,)),
                                     ),
                                   ),
                                 ),
                               ),

                             ],
                           ),
                         ),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('WellCome back!',style: TextStyle(color: Colors.grey,fontSize: 16.sp,fontWeight: FontWeight.w400),),
                           Text('Jassica Simpson',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w600),),
                         ],
                       )
                     ],),
                   )
                  ],
                ),
                SizedBox(height: 30.h,),
                Container(
                  height: 60.h,
                  width: 340.w,
                  child: Container(color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(


                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(color: Colors.white)
                        ),
                        prefixIcon: Icon(Icons.search,color: Colors.grey,),
                        hintText: 'Search Order ID..',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400
                        )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h,),
                SizedBox(height: 400,
                  child: ListView(physics: ScrollPhysics(),
                    children: [
                      GestureDetector(onTap: (){Get.to(()=>Completed_order());}   ,child: CardWidget(icon:Icons.check_box ,title:'5670' ,subtitle:'Compeleted Order' ,color:Colors.green ,)),
                      GestureDetector(onTap: (){Get.to(()=>Ready_order());}  ,child: CardWidget(icon:Icons.directions_bike_outlined ,title:'14' ,subtitle:'Ready to pickup' ,color:Colors.amber ,)),
                      GestureDetector(onTap: (){Get.to(()=>Pending_order());}  ,child: CardWidget(icon:Icons.backpack ,title:'23' ,subtitle:'pending orders' ,color:Colors.lightBlue ,)),
                      GestureDetector(onTap: (){Get.to(()=>Cancled_order());},child: CardWidget(icon:Icons.cancel_outlined ,title:'360' ,subtitle:'Cancel Order' ,color:Colors.red ,))
                    ],
                  ),
                ),
                SizedBox(
                    height: 450.h,
                    width: 400.w,
                    child:Padding(padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 20.h),
                      child:  GridView.builder(
                        physics: ScrollPhysics(),
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
                    height: 450.h,
                    width: 400.w,
                    child:Padding(padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 20.h),
                      child:  GridView.builder(
                        physics: ScrollPhysics(),
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
      ]),
          ),
        ),
      ),

    );
  }
}
