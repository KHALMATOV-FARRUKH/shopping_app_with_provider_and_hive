import 'package:flutter/material.dart';
import 'package:shopping_app_with_provider_and_hive/views/shared/app_style.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is CartPage",
          style: appStyle(40, Colors.black, FontWeight.bold),
        ),
      ),
    );;
  }
}
