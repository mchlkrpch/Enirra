import 'package:enirra/src/stat-block.dart';
import 'package:enirra/style.dart';
import 'package:flutter/material.dart';

class Paragraph extends StatefulWidget {
  final String programId;
  final String paragraphId;
  const Paragraph({
    super.key,
    required this.programId,
    required this.paragraphId,
  });

  @override
  State<Paragraph> createState() => _Paragraph();
}

class _Paragraph extends State<Paragraph> {
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
    return Center(
      child:
      Container(
        padding: EdgeInsets.only(
          top:50,
          left: 10,
          right: 10,
        ),
        child:
        Column(
          spacing: stdPageSpacing,
          children: [
            // Statistic about the paragraph
            // according to user's history in db
            StatBlock(
              programId: programId,
              paragraphId: paragraphId
            ),
            // Content of the paragraph according to db
            SingleChildScrollView(
              child:
              Column(
                children:[
                  Text(
                    'Causative verbs are used to express that someone'
                    'or something causes another person or thing to'
                    'do something.',
                    style: pStyle
                  )
                ]
              )
            )
          ],
        )
      )
    );
  }
}