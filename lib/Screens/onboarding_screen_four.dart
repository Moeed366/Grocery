
import 'package:delivery_rider/Screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'login_screen.dart';

class OnboardingScreenFour extends StatelessWidget {
  const OnboardingScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            top: 90.h,
            left: 280.h,
            child: Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amber,width: 3.w),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top:100.h,
            left: 100.w,
            child:  CircleAvatar(
              radius: 100.r,
              backgroundImage: const AssetImage('assets/grocery_image_4.jpg'),
            ),
          ),
          Positioned(
            top: 80.h,
            left: 80.w,
            child: Container(
              height:75.h,
              width: 80.w,
              decoration: const BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text('corter',style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp
                ),),
              ),
            ),
          ),
          Positioned(
            top: 250.h,
            left: 80.h,
            child: Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amber,width: 3.w),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 255.h,
            left:280.w,
            child: Container(
              height:15.h,
              width: 15.w,
              decoration: const BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
              ),

            ),
          ),
          Positioned(
            top: 300.h,
            left: 130.w,
            child:  RichText(text: TextSpan(
                text: 'Big saving with',style: TextStyle(
              color: Colors.black,
              fontSize: 24.sp,
              fontWeight: FontWeight.w500,
            ),
                children: [
                  TextSpan(text: '\nseasonal discount',style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                  ),)   ,
                  TextSpan(text: '\non all product.',style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                  ),)   ,
                ]
            ),),),

          Positioned(
            top: 380,
            left: 80.w,
            child: RichText(text: TextSpan(
                text: 'we believe on providing best competitive ',style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
                children: [
                  TextSpan(text: '\nprices to all of our customer.',style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),)   ,

                ]
            ),),
          ),
          Positioned(
            top: 700.h,
            left: 50.w,
            child: InkWell(
              onTap: (){
                Get.to(()=>const LoginScreen());
              },
              child:   Container(
                height: 40.h,
                width: 300.w,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  child: Text('Done',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp
                    ),
                  ),
                ),
              ),
            ),),
        ],
      ),


    );




  }
}
