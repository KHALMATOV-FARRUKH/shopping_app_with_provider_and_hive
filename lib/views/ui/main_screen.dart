import 'package:flutter/material.dart';
import 'package:shopping_app_with_provider_and_hive/views/shared/app_style.dart';
import 'package:shopping_app_with_provider_and_hive/views/shared/bottom_nav_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2E2E2),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomNavWidget(),
                BottomNavWidget(),
                BottomNavWidget(),
                BottomNavWidget(),
                BottomNavWidget(),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Text(
          "MainScreen",
          style: appStyle(40, Colors.black, FontWeight.bold),
        ),
      ),
    );
  }
}

