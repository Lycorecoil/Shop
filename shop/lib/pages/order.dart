import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});
  @override
  State<StatefulWidget> createState() {
    return _OrderState();
  }
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Page dans la quel la liste des article voulu sera mis en colone. En cour de developpement....",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
