import 'package:flutter/material.dart';
class CompleteOrderTwoWidgets {
  final IconData icon;
  final Color color;
  final String price;

  CompleteOrderTwoWidgets({
    required this.icon,
    required this.color,
    required this.price,
  });
}
List <CompleteOrderTwoWidgets> completeOrderSecond =[

  CompleteOrderTwoWidgets(icon: Icons.all_inbox_rounded, color: Colors.green, price: '688'),

  CompleteOrderTwoWidgets(icon: Icons.electric_bike, color: Colors.amber, price: '027'),

  CompleteOrderTwoWidgets(icon: Icons.markunread_mailbox_rounded, color: Colors.blue, price: '737'),

  CompleteOrderTwoWidgets(icon: Icons.cancel_outlined, color: Colors.red, price: '930'),

];