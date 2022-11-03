import 'package:delivery_rider/Screens/Order-number.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class OrdersPage extends StatelessWidget {
   OrdersPage({Key? key}) : super(key: key);
  ScrollController _rrectController = ScrollController();
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
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.only(left: 20.w,right: 20.w,top: 60.h),
        child: Container(color: Colors.grey.shade100,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15.w),
                height: 80.h,
                width: 360.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(8.r),
                  topLeft: Radius.circular(8.r),
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                 SizedBox(width: 250.w,
                 child:  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     CircleAvatar(
                       radius: 30.r,
                       backgroundImage: const AssetImage('assets/grocery_image.jpg'),
                     ),

                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(height: 6.h,),
                         Text('Order #4469B ',
                           style: TextStyle(
                               color: Colors.black,
                               fontSize: 16.sp
                           ),
                         ),
                         SizedBox(height: 4.h,),
                         Text('Placed on December 15, 2020',
                           style: TextStyle(
                               color: Colors.black,
                               fontSize: 12.sp
                           ),
                         ),
                         SizedBox(height: 4.h,),
                         Row(

                           children: [
                             Text('items:',
                               style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 10.sp
                               ),
                             ),
                             SizedBox(width: 2.w,),
                             Text('10',
                               style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 10.sp
                               ),
                             ),
                             SizedBox(width: 8.w,),
                             Text('Total:',
                               style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 10.sp
                               ),
                             ),
                             SizedBox(width: 2.w,),
                             Text('\$5.90',
                               style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 10.sp
                               ),
                             ),
                           ],
                         )
                       ],
                     )
                   ],
                 ),
                 )
                  ],
                ),
              ),
              Container(
                color: Color(0x8ffb700),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
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
                              backgroundColor: Color(0xffffffff),
                              radius: 20.r,
                              child: Padding(
                                  padding:
                                  const EdgeInsets.all(6.0),
                                  child: Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.amber,
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
                                    fontSize: 14,
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
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Container(height: 300.h,width: 350.w,
                child: DraggableScrollbar.rrect(

                    controller: _rrectController,
                    backgroundColor: Colors.amber,

                  child: ListView.builder   (
                      controller: _rrectController,itemCount: 6,
    itemBuilder: (context, index) {
return Card(elevation: 1,
  child:   Container(

   // padding: EdgeInsets.only(left: 15.w),

    height: 80.h,

    width: 300.w,

    decoration: BoxDecoration(

      borderRadius: BorderRadius.only(topRight: Radius.circular(8.r),

          topLeft: Radius.circular(8.r),

      ),

      color: Colors.white,

    ),

    child: Row(

      children: [

          SizedBox(width: 200.w,

            child:  Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [



                    CircleAvatar(

                      radius: 25.r,

                      backgroundImage: const AssetImage('assets/grocery_image.jpg'),

                    ),

                     SizedBox(width: 10.w,),

                    Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        SizedBox(height: 20.h,),

                        Text('Order #4469B ',

                          style: TextStyle(

                              color: Colors.black,

                              fontSize: 23.sp,

                            fontWeight: FontWeight.w500

                          ),

                        ),

                        SizedBox(height: 4.h,),

                        Row(



                          children: [

                            Text('each',

                              style: TextStyle(

                                  color: Colors.black,

                                  fontSize: 16.sp

                              ),

                            ),



                            SizedBox(width: 8.w,),

                            Container(

                              height: 10.h,

                              width: 2.w,

                              color: Colors.black12,

                            ),

                            SizedBox(width: 6.w,),

                            Text('\$5.90 x 5',

                              style: TextStyle(

                                  color: Colors.amber,

                                  fontSize: 16.sp

                              ),

                            ),

                          ],

                        )

                      ],

                    )

              ],

            ),

          )

      ],

    ),

  ),
);

    } ),
                ),
              ) ,

              SizedBox(height: 10.h,),
              Padding(
                padding:  EdgeInsets.only(left: 30.w,right: 30.w),
                child: Container(
                  height: 300.h,
                  width: 350.w,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(height: 15.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 1.w,),
                          Text('subtotal (6) items',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700
                          ),
                          ),
                          Spacer(),
                          Text('\$36.45',
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400
                          ),
                          ),
                          SizedBox(width: 1.w,),
                        ],
                      ),
                      Divider(thickness: 1.w,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 1.w,),
                          Text('Promotional Discount',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          Spacer(),
                          Text('\$9.45',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          SizedBox(width: 1.w,),
                        ],
                      ),
                      Divider(thickness: 1.w,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 1.w,),
                          Text('Delivery Charges',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          Spacer(),
                          Text('\$6.45',
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          SizedBox(width: 1.w,),
                        ],
                      ),
                      Divider(thickness: 1.w,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 1.w,),
                          Text('Sales Tax',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          Spacer(),
                          Text('\$3.45',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          SizedBox(width: 1.w,),
                        ],
                      ),
                      Divider(thickness: 1.w,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 1.w,),
                          Text('Total',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          Spacer(),
                          Text('\$36.45',
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          SizedBox(width: 1.w,),
                        ],
                      ),
                      Divider(thickness: 1.w,),
                     SizedBox(height: 20.h,),
                      GestureDetector(onTap: (){Get.to(()=>Order_number());},
                       child: Container(
                         height: 55.h,
                         width: 280,
                         decoration: BoxDecoration(
                           color: Colors.amber,
                           borderRadius: BorderRadius.circular(8.r),
                         ),
                         child: Center(
                           child: Text('Directions',
                             style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 22.sp,
                                 fontWeight: FontWeight.w400
                             ),
                           ),
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
        ),
      ),
    );
  }
}
