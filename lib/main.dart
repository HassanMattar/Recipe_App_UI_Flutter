import 'package:flutter/material.dart';

import 'Screen/Home/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Recipe App ',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
       appBarTheme: AppBarTheme(color: Colors.white,elevation: 0),
       
        ),
          home: HomeScreen(),
    );
  }
}

