import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  const CardWidget({Key? key,required this.icon,required this.title,required this.subtitle,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.black12,
          child: Icon(icon,color: color,),

        ),
        title: Text(title),
        subtitle: Text(subtitle,style: TextStyle(color: Colors.grey,
            fontSize: 14.sp,fontWeight: FontWeight.w400),),
        trailing: Icon(Icons.arrow_forward_outlined,color: color,),

      ),
    );
  }
}
