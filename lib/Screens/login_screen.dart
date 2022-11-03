import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'bottom_navigation_bar.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: Image.asset('assets/pic.jpg')),
                  Padding(
                    padding:  EdgeInsets.only(top: 30.h,left: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(onTap: () {Get.back();},child: Icon(Icons.arrow_back,color: Colors.white,)),
                        Text('Login',style: TextStyle(color: Colors.white,fontSize: 22.sp,fontWeight: FontWeight.w400),),
                        Container()
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(top: 35.h,left: 30.w,right: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(text: TextSpan(text: 'WelCome back!',
                        style: TextStyle(
                            color: Colors.black,fontSize: 24.sp,fontWeight: FontWeight.w600),
                    children: [
                      TextSpan(text: '\nSign in to your account',
                          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize:20.sp ))
                    ]),

                    ),
                    SizedBox(height: 25.h,),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                      ),
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.email_outlined,size: 18,),
                      hintText: 'Email Address',
                      hintStyle: TextStyle(color: Colors.grey,fontSize: 16.sp,fontWeight: FontWeight.w400),
                      border: OutlineInputBorder()
                    ),
                  ),
                    SizedBox(height: 8.h,),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        ),
                        prefixIcon: Icon(Icons.lock_open_outlined,size: 18,),
                        suffixIcon: Icon(Icons.visibility,size: 18,),
                        fillColor: Colors.white,
                        hintText: 'password',
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 16.sp,fontWeight: FontWeight.w400),
                        border: OutlineInputBorder()
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 170.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  // setState(() {
                                  //   isSwitched = value;

                                  // });
                                },
                                activeTrackColor: Colors.lightGreenAccent,
                                activeColor: Colors.green,
                              ),
                              Text('Remember me',style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w500),)
                            ],
                          ),
                        ),
                        Text('Forget Password',style: TextStyle(color: Colors.blue,fontSize: 16.sp,fontWeight: FontWeight.w500),)
                      ],
                    ),
                    SizedBox(height: 130.h,),
                    InkWell(
                      onTap: (){
                        Get.to(()=>Home());
                      },
                      child: Container(
                  margin: EdgeInsets.only(left: 30.w),
                        height: 50.h,
                        width: 350.w,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Center(child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w500),)),
                      ),
                    ),
                    SizedBox(height: 15.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 80.w),
                      child: RichText(
                          text: TextSpan(text: 'Don\'t have an account?',style: TextStyle(color: Colors.grey,
                      fontSize: 14.sp,fontWeight: FontWeight.w400
                      ),
                          children: [
                            TextSpan(text: 'SignUp',style: TextStyle(color: Colors.black,fontSize:16.sp,fontWeight: FontWeight.w600 ))


                      ])),
                    ),
                    SizedBox(height: 15.h,),


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
