
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Model/Complete_order_model.dart';
import 'orders_screens.dart';




class Completed_order extends StatefulWidget {
  const Completed_order({Key? key}) : super(key: key);

  @override
  State<Completed_order> createState() => _NotifyState();
}

class _NotifyState extends State<Completed_order> {


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
              leading:IconButton(icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,), onPressed: () { Get.back(); },) ,
              centerTitle: true,
              title: Text("Completed Orders",style: TextStyle(color: Colors.black),),

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
                    child: GestureDetector( onTap: (){Get.to(()=>OrdersPage());},
                      child: Card(elevation: 1,
                        child: Column(children: [
                          SizedBox(height: 10.h,),
                          Row(children: [
                            SizedBox(width: 10.w,),
                            Padding(
                              padding: EdgeInsets.only(left: 10.w,top: 15.h,right: 10.w,bottom: 15.h),
                              child: CircleAvatar(backgroundColor: Color(
                                  0x561dfa04),
                                  radius: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Image.asset("assets/deliverybox.png",fit: BoxFit.fill,),
                                  )),
                            ),
                            SizedBox(width: 20,),
                            SizedBox(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Order #${Comp_ord_list[index].id.toString()}',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w700),),
                                  Text('Placed on ${Comp_ord_list[index].PlacedTime.toString()}',style: TextStyle(color: Colors.grey,fontSize: 14),),

                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                    children: <Widget>[
                                      Text('Items:${Comp_ord_list[index].item.toString()}',style: TextStyle(color: Colors.grey,fontSize: 14),),
                                      SizedBox(width: 13.w,),
                                      Text('Total: \$${Comp_ord_list[index].Total.toString()}',style: TextStyle(color: Colors.grey,fontSize: 14),),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ]
                            ,),
                          Divider(),
                          SizedBox(height: 16.h,),
                          Row(crossAxisAlignment: CrossAxisAlignment.end,
                            children: [SizedBox(width: 10.w,),
                              Icon(Icons.circle,color: Color(
                                  0xf516b106),size: 14,),
                              SizedBox(width: 10.w,),
                              Text('Order delivered',style: TextStyle(color: Colors.grey,fontSize: 14),),
                              Spacer(),
                              Text('${Comp_ord_list[index].DeliveredTime.toString()}',style: TextStyle(color: Colors.grey,fontSize: 14),),
                              SizedBox(width: 10,)
                          ],),
                          SizedBox(height: 20.h,)
                        ],),
                      ),
                    ),
                  );


                } )
        ));
  }

}


