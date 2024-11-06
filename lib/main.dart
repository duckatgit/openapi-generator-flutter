import 'package:flutter/material.dart';
import 'package:open_api_generator_flutter/screens/home_screen.dart';
import 'package:open_api_generator_flutter/screens/pet_screen.dart';

final GlobalKey<ScaffoldMessengerState> snackBarKey =
GlobalKey<ScaffoldMessengerState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      scaffoldMessengerKey: snackBarKey,
      home: HomeScreen(),
    );
  }
}
