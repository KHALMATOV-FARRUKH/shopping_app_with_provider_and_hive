import 'package:flutter/material.dart';
import 'package:shopping_app_with_provider_and_hive/views/shared/app_style.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is ProfilePage",
          style: appStyle(40, Colors.black, FontWeight.bold),
        ),
      ),
    );
  }
}
