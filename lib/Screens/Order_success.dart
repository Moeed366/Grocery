import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Order_succerss extends StatefulWidget {
  const Order_succerss({Key? key}) : super(key: key);

  @override
  State<Order_succerss> createState() => _Order_succerssState();
}

class _Order_succerssState extends State<Order_succerss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(0, 70),
        child: Padding(
          padding:  EdgeInsets.only(top: 30.h),
          child: AppBar(elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading:IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: () { Get.back(); },) ,
            centerTitle: true,
            title: Text("Order Success",style: TextStyle(color: Colors.black),),

          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 13.w,right: 13.w),
        child: Container(color: Colors.grey.shade200,
          child: Column(children: [

            Expanded(child: Center(
            child:  Column(children: [
              SizedBox(height: 100.h,),
                Icon(Icons.shopping_bag_outlined,color: Color(0xffffa800),size: 100,),
                SizedBox(height: 20.h,),
                Text("Order Successfully",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 27.sp),),
              Text("Delivered!",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 27.sp),),
              SizedBox(height: 20.h,),
              Text("Good job! You've successfully",style: TextStyle(color: Colors.black45,fontSize: 20.sp),),
              RichText(text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 36),children: [
                TextSpan(text:"delivered Order",style: TextStyle(color: Colors.black45,fontSize: 20.sp),),
                TextSpan(text:"#45876",style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w500),),
              ]))

              ],),
            )),
            SizedBox(height: 10.h,),
            Container(width: 400.w,height: 60.h,
                child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                  primary:  Color(0xffffa800),
                  shape: RoundedRectangleBorder(

                  ),
                  elevation: 3.0, ),child: Text("Start Order",style: TextStyle(color: Colors.white),))),
            SizedBox(height: 20.h,)
          ],),
        ),
      ),
    );
  }
}
