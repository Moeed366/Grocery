
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Model/Complete_order_model.dart';
import 'orders_screens.dart';




class Ready_order extends StatefulWidget {
  const Ready_order({Key? key}) : super(key: key);

  @override
  State<Ready_order> createState() => _NotifyState();
}

class _NotifyState extends State<Ready_order> {


  //late final String? acolor;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(0, 70),
          child: Padding(
            padding:  EdgeInsets.only(top: 30.h),
            child: AppBar(elevation: 0.0,
              backgroundColor: Colors.transparent,
              leading:IconButton(icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,), onPressed: () {  Get.back();},) ,
              centerTitle: true,
              title: Text("Ready to Pickup",style: TextStyle(color: Colors.black),),

            ),
          ),
        ),
        body: SafeArea(
            child: ListView.builder(
              //physics: NeverScrollableScrollPhysics(),

                itemCount: Comp_ord_list.length,
                itemBuilder: (context, index) {

                  return Padding(
                    padding:  EdgeInsets.only(left: 10.w,right: 10,bottom: 4),
                    child: Card(elevation: 1,
                      child: Column(children: [
                        SizedBox(height: 10.h,),
                        Row(children: [
                          SizedBox(width: 10.w,),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w,top: 15.h,right: 10.w,bottom: 15.h),
                            child: CircleAvatar(backgroundColor: Color(
                                0x56fabd04),
                                radius: 20.r,
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Image.asset("assets/ready.png",fit: BoxFit.fill,),
                                )),
                          ),
                          SizedBox(width: 20,),
                          SizedBox(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Order #${Comp_ord_list[index].id.toString()}',style: TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w700),),


                                Text('Placed on ${Comp_ord_list[index].PlacedTime.toString()}',style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w500),),

                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: <Widget>[




                                    RichText(

                                      text: TextSpan(

                                        style: TextStyle(color: Colors.black, fontSize: 36.sp),

                                        children: <TextSpan>[

                                          TextSpan(text:'Items: ',style: TextStyle(color: Colors.grey,fontSize: 14.sp),),

                                          TextSpan(text:'${Comp_ord_list[index].item.toString()}',style: TextStyle(color: Colors.black,fontSize: 14.sp),),
                                        ],
                                      ),

                                    ),

                                    SizedBox(width: 13.w,),
                                    RichText(

                                      text: TextSpan(

                                        style: TextStyle(color: Colors.black, fontSize: 36.sp),

                                        children: <TextSpan>[

                                          TextSpan(text:'Total: ',style: TextStyle(color: Colors.grey,fontSize: 14.sp),),

                                          TextSpan(text:'\$${Comp_ord_list[index].Total.toString()}',style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w500,),),
                                        ],
                                      ),

                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          IconButton(onPressed: (){
                            Get.to(()=>OrdersPage());
                          }, icon: Icon(Icons.arrow_forward,color: Color(
                              0xd7fabd04),)),
                          SizedBox(width: 10.w,),
                        ]
                          ,),

                        SizedBox(height: 15.h,)
                      ],),
                    ),
                  );


                } )
        ));
  }

}


