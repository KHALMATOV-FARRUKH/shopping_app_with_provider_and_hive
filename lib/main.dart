import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app_with_provider_and_hive/controllers/mainscreen_provider.dart';
import 'package:shopping_app_with_provider_and_hive/controllers/product_provider.dart';
import 'package:shopping_app_with_provider_and_hive/views/ui/main_screen.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  // method that initializes the app and run top level widget
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => MainScreenNotifier()),
    ChangeNotifierProvider(create: (context) => ProductNotifier()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
