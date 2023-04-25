import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app_with_provider_and_hive/controllers/mainscreen_provider.dart';
import 'package:shopping_app_with_provider_and_hive/views/shared/app_style.dart';
import 'package:shopping_app_with_provider_and_hive/views/shared/bottom_nav_bar.dart';
import 'package:shopping_app_with_provider_and_hive/views/shared/bottom_nav_widget.dart';
import 'package:shopping_app_with_provider_and_hive/views/ui/cart_page.dart';
import 'package:shopping_app_with_provider_and_hive/views/ui/home_page.dart';
import 'package:shopping_app_with_provider_and_hive/views/ui/product_by_cat.dart';
import 'package:shopping_app_with_provider_and_hive/views/ui/profile_page.dart';
import 'package:shopping_app_with_provider_and_hive/views/ui/search_page.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  List<Widget> pageList =  [
    const HomePage(),
    const SearchPage(),
    const HomePage(),
    CartPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          backgroundColor: const Color(0xFFe2e2e2),

          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: const BottomNavBar(),
        );
      },
    );
  }
}

