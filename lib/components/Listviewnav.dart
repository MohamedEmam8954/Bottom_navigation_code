import 'package:flutter/material.dart';

class Listview_nav extends StatefulWidget {
  const Listview_nav({super.key});

  @override
  State<Listview_nav> createState() => _Listview_navState();
}

class _Listview_navState extends State<Listview_nav> {
  int current_index = 0;
  final List<IconData> data = const [
    Icons.home,
    Icons.settings,
    Icons.favorite,
    Icons.account_box,
    Icons.message,
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GestureDetector(
          onTap: () {
            setState(() {
              current_index = index;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(microseconds: 300),
            width: 40,
            decoration: BoxDecoration(
              border: current_index == index
                  ? const Border(
                      top: BorderSide(color: Colors.white, width: 1),
                    )
                  : null,
              gradient: current_index == index
                  ? LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.3),
                        Colors.black,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )
                  : null,
            ),
            child: Icon(data[index],
                size: 35,
                color:
                    index == current_index ? Colors.amber : Colors.grey[600]),
          ),
        ),
      ),
      scrollDirection: Axis.horizontal,
    );
  }
}
