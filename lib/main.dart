import 'package:bottomnavigtion/components/Home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(My_app());
}

class My_app extends StatelessWidget {
  const My_app({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_page(),
    );
  }
}
