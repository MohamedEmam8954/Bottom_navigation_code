import 'package:bottomnavigtion/components/Listviewnav.dart';
import 'package:flutter/material.dart';

class Bottom_nav extends StatelessWidget {
  const Bottom_nav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Material(
        borderRadius: BorderRadius.circular(18),
        color: Colors.black,
        child: Container(height: 70, child: const Listview_nav()),
      ),
    );
  }
}
