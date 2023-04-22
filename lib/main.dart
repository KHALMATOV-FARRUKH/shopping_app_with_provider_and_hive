import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app_with_provider_and_hive/controllers/mainscreen_provider.dart';
import 'package:shopping_app_with_provider_and_hive/views/ui/main_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => MainScreenNotifier()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
