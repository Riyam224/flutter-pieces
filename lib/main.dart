import 'package:flutter/material.dart';
import 'package:my_app/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(
          color1: Color.fromARGB(255, 29, 119, 119),
          color2: Color.fromARGB(255, 36, 6, 52),
        ));
  }
}



// 