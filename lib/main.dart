import 'package:array_counter/com/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ArrayCounterApp());
}

class ArrayCounterApp extends StatelessWidget {
  const ArrayCounterApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Array Counter',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 60, 62, 63),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}
  