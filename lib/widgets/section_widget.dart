import 'package:flutter/material.dart';

import 'package:cookfinder/pages/sample.dart';
import 'package:cookfinder/widgets/others.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({Key? key, required this.items, required this.sectionHeight, required this.title})
      : super(key: key);

  final items;
  final double sectionHeight;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30, left: 30, bottom: 20),
          child: Text(
            title,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 22),
          height: sectionHeight,
          child: items,
        ),
        seeAllBtn(
          context: context,
          screen: SampleScreen(text: 'Italian'),
        ),
      ],
    );
  }
}
