import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/navigator/app_router.dart';

void main() {
  runApp(const MyApp());
} //sc36

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: AppRouter().router,
    );
  }
}
