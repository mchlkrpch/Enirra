import 'package:enirra/style.dart';
import 'package:flutter/material.dart';

class StatBlock extends StatefulWidget {
  final String programId;
  final String paragraphId;
  const StatBlock({
    super.key,
    required this.programId,
    required this.paragraphId,
  });

  @override
  State<StatBlock> createState() => _StatBlock();
}

Widget getProgressBar(double q, double width) {
  return Container(
    width: width,
    height: 3,
    decoration: BoxDecoration(
      color: Colors.black.withAlpha(10)
    ),
    child:
    Align(
      alignment: Alignment.topLeft,
      child:
      FractionallySizedBox(
        widthFactor: q,
        child: Container(
          color: Colors.blue,
        ),
      ),
    )
  );
}

class _StatBlock extends State<StatBlock> {
  late String programId;
  late String paragraphId;
  @override
  void initState() {
  super.initState();
    setState(() {
      programId = widget.programId;
      paragraphId = widget.paragraphId;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: stdPageSpacing / 2,
      children: [
        Text(
          'Causative',
          style: h1Style
        ),
        Container(
          padding: EdgeInsets.only(left:15, right: 15),
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    'G: 8constructions',
                    style: pStyle,
                  ),
                  getProgressBar(.2, 150),
                ],
              ),
              Column(
                children: [
                  Text(
                    'V: 10ws, 48 ctxs',
                    style: pStyle,
                  ),
                  getProgressBar(.5, 150),
                ],
              ),
            ],
          )
        )
      ],
    );
  }
}