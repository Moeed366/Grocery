import 'package:flutter/material.dart';
class CompleteOrderWidgets {
  final IconData icon;
  final Color color;
  final String price;

  CompleteOrderWidgets({
    required this.icon,
    required this.color,
    required this.price,
  });
}
List <CompleteOrderWidgets> completeOrder =[

  CompleteOrderWidgets(icon: Icons.all_inbox_rounded, color: Colors.green, price: '688'),

  CompleteOrderWidgets(icon: Icons.electric_bike, color: Colors.amber, price: '027'),

  CompleteOrderWidgets(icon: Icons.markunread_mailbox_rounded, color: Colors.blue, price: '737'),

  CompleteOrderWidgets(icon: Icons.cancel_outlined, color: Colors.red, price: '930'),



];




