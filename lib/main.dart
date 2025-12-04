import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentaion/home/views/homeScren.dart';

void main() {
  runApp(const AppMaterial());
}


class AppMaterial extends StatelessWidget {
  const AppMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreenView(),
    );
  }
}