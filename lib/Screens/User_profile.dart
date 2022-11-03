import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left: 10.w,right: 10.w),
        child: Column(

          children: [
            SizedBox(height: 130.h,),

            Container(color: Color(0xD000000),height: 70.h,width: 395.w,
              child: Stack(clipBehavior: Clip.none,children: [
                Positioned(top: -50.h,left: 130.w,
                  child: Center(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                            radius: 60.r,
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
                                    height: 90.h,
                                    width: 90.w,
                                    child: Image.asset(
                                      'assets/user.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                            )),
                        Positioned(
                          bottom: 5.h,
                          right: 6.w,
                          child: InkWell(
                            onTap: () {},
                            child:  Center(
                              child: CircleAvatar(
                                backgroundColor: Colors.amber,
                                radius: 17.0.r,
                                child: Center(child: Icon(Icons.camera_alt,color: Colors.white,size: 20,)),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

              ]),),
            Container(width: 390.w,height: 100.h,color: Color(0xD000000),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Center(
                      child: Text(
                        'Jessica Simpson',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Product Sans',
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Center(
                      child: Text(
                        'gfx.parthner@gmail.com',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontFamily: 'Product Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(color: Color(0xD000000),
                child: Column(
                  children: [
                    Container(height: 50.h,width: 390.w,
                      child: Row(
                        children: [
                          SizedBox(width: 10.w,),
                          Icon(
                            Icons.person,color: Colors.amber,
                            size: 25,

                          ),
                          SizedBox(
                            width: 13.w,
                          ),
                          Text(
                            'About Me',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Product Sans',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Spacer(),
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)),

                        ],
                      ),
                    ),
                    Container(height: 50.h,width: 390.w,
                      child: Row(
                        children: [
                          SizedBox(width: 10.w,),
                          Icon(
                            Icons.confirmation_number_rounded,color: Colors.amber,
                            size: 25,

                          ),
                          SizedBox(
                            width: 13.w,
                          ),
                          Text(
                            'Transaction',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Product Sans',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Spacer(),
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)),

                        ],
                      ),
                    ),
                    Container(height: 50.h,width: 390.w,
                      child: Row(
                        children: [
                          SizedBox(width: 10.w,),
                          Icon(
                            Icons.notifications,color: Colors.amber,
                            size: 25,

                          ),
                          SizedBox(
                            width: 13.w,
                          ),
                          Text(
                            'Notification',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Product Sans',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Spacer(),
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)),

                        ],
                      ),
                    ),
                    Container(height: 50.h,width: 390.w,
                      child: Row(
                        children: [
                          SizedBox(width: 10.w,),
                          Icon(
                            Icons.power_settings_new,color: Colors.amber,
                            size: 25,

                          ),
                          SizedBox(
                            width: 13.w,
                          ),
                          Text(
                            'Sign Out',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Product Sans',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Spacer(),
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}