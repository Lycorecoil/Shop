/*import 'package:flutter/material.dart';
import 'package:shop/widget/support_widget.dart';

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
    return Scaffold(
        backgroundColor: Color(0xfff2f2f2),
        appBar: AppBar(
          backgroundColor: Color(0xfff2f2f2),
          title: Text(
            'current Orders',
            style: AppWidget.boldTextFeildStyle(),
          ),
          centerTitle: true,
        ));
  }
}*/
import 'package:flutter/material.dart';
import 'package:shop/pages/cart_items.dart';
import 'package:shop/widget/support_widget.dart';
import 'package:shop/main.dart'; // Importez là où vous avez défini `cartItems`.

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
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      appBar: AppBar(
        backgroundColor: Color(0xfff2f2f2),
        title: Text(
          'Commandes en cours',
          style: AppWidget.boldTextFeildStyle(),
        ),
        centerTitle: true,
      ),
      body: cartItems.isEmpty
          ? Center(
              child: Text(
                "Votre panier est vide",
                style: AppWidget.lightTextFeildStyle(),
              ),
            )
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return ListTile(
                  leading: Image.asset(
                    item['image'],
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    item['name'],
                    style: AppWidget.semiBoldFeildStyle(),
                  ),
                  subtitle: Text(
                    "${item['price']} F",
                    style: TextStyle(
                      color: Color(0xFFfd6F3e),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      setState(() {
                        cartItems.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
    );
  }
}
