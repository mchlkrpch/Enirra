import 'package:flutter/material.dart';

class BottonMenu extends StatefulWidget {
  int index = 0;
  Function f;
  BottonMenu({super.key, required this.index, required this.f});

  @override
  State<BottonMenu> createState() => _BottonMenu();
}

class _BottonMenu extends State<BottonMenu> {
  int index = 0;
  late Function f;
  @override
  void initState() {
    super.initState();
    setState(() {
      index = widget.index;
      f = widget.f;
    });
  }

  List<IconData> icons = [
    Icons.home,
    Icons.search,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return
    Container(
      width: 1080,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black.withAlpha(60),
          width: 0.4,
        ),
      ),
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          for (int i = 0; i < 3; ++i) ... {
            GestureDetector(
              onTap: (){
                f(i);
              },
              child: 
              Icon(icons[i]),
            ),
          }
        ],
      )
    );
  }
}