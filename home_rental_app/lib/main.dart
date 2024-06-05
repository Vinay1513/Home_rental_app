import 'package:flutter/material.dart';
import 'package:home_rental_app/Screens/getStarted.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Rental App',
      home: GetStartedScreen(),
    );
  }
}
