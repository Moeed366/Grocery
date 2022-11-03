import 'package:flutter/material.dart';
import 'package:another_stepper/another_stepper.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Model/Complete_order_model.dart';
import 'orders_screens.dart';

class Pending_order extends StatefulWidget {
  const Pending_order({Key? key}) : super(key: key);

  @override
  State<Pending_order> createState() => _Pending_orderState();
}

class _Pending_orderState extends State<Pending_order> {

  List<StepperData> stepperData = [
    StepperData(
      title: "Order placed",
      subtitle: "",
    ),
    StepperData(
      title: "Order confirmed",
      subtitle: "",
    ),
    StepperData(
      title: "Order preparation",
      subtitle: "",
    ),
    StepperData(title: "Ready for pickup", subtitle: ""),
    StepperData(
      subtitle: '',
      title: "Order delivered",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(0, 70),
        child: Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.black,
              ),
              onPressed: () {Get.back();},
            ),
            centerTitle: true,
            title: Text(
              "Pending Orders",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: Comp_ord_list.length,
          itemBuilder: (context, index) {
            return GestureDetector( onTap: (){Get.to(()=>OrdersPage());},
              child: Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: ExpansionPanelList(

                  animationDuration: Duration(milliseconds: 500),
                  dividerColor: Colors.red,
                  expandedHeaderPadding: EdgeInsets.only(bottom: 0.0),
                  elevation: 1,
                  children: [
                    ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded)

                      {
                        return Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.w,
                                        top: 15.h,
                                        right: 10.w,
                                        bottom: 15.h),
                                    child: CircleAvatar(
                                        backgroundColor: Color(0x560099ff),
                                        radius: 20,
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Image.asset(
                                            "assets/pending_details.png",
                                            fit: BoxFit.fill,
                                          ),
                                        )),
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
                                          'Order #${Comp_ord_list[index].id.toString()}',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          'Placed on ${Comp_ord_list[index].PlacedTime.toString()}',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            RichText(
                                              text: TextSpan(
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 36.sp),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: 'Items: ',
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 14.sp),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        '${Comp_ord_list[index].item.toString()}',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14.sp),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 13.w,
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 36.sp),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: 'Total: ',
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 14.sp),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        '\$${Comp_ord_list[index].Total.toString()}',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14.sp,
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              )
                            ],
                          ),
                        );
                      },
                      body: Container(
                        // padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                        child: Column(
                          children: [
                            Container(
                              color: Color(0x1914aef5),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30.h,
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
                                                  color: Colors.blue,
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
                                                  fontSize: 16,
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
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30.h,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 300.h,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Container(
                                    width: 150.w,
                                    height: 190.h,
                                    child: AnotherStepper(
                                      activeIndex: 2,
                                      gap: 10,
                                      stepperList: stepperData,
                                      stepperDirection: Axis.vertical,
                                      horizontalStepperHeight: 70.h,
                                    ),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    width: 100.w,
                                    height: 190.h,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Dec 10,2020",
                                          style: TextStyle(color: Colors.black45),
                                        ),

                                        //Spacer(),

                                        Text(
                                          "Dec 10,2020",
                                          style: TextStyle(color: Colors.black45),
                                        ),

                                        // Spacer(),

                                        Text(
                                          "Dec 10,2020",
                                          style: TextStyle(color: Colors.black45),
                                        ),

                                        //Spacer(),

                                        Text(
                                          "Pending",
                                          style: TextStyle(color: Colors.black45),
                                        ),

                                        //Spacer(),

                                        Text(
                                          "Pending",
                                          style: TextStyle(color: Colors.black45),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      isExpanded: Comp_ord_list[index].expanded,
                    )
                  ],
                  expansionCallback:     (int item, bool status) {
                    setState(() {
                      Comp_ord_list[index].expanded =
                          !Comp_ord_list[index].expanded;
                    });
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }

//_buildPlayerModelList(monthModel[index]);
}
