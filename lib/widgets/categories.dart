import 'package:cookfinder/pages/sample.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key, required this.sizeCat}) : super(key: key);

  final double sizeCat;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ItemSection(
          sizeCat: sizeCat,
          image: 'grill.png',
          text: 'Grill',
          screen: SampleScreen(text: 'Grill'),
        ),
        ItemSection(
          sizeCat: sizeCat,
          image: 'exotic.png',
          text: 'Exotic',
          background: Color(0xFFedf8f2),
          colorText: Color(0xFF3C8B60),
          screen: SampleScreen(text: 'Exotic'),
        ),
        ItemSection(
          sizeCat: sizeCat,
          image: 'italian.png',
          text: 'Italian',
          background: Color(0xFFfff0e9),
          colorText: Color(0xFFA76040),
          screen: SampleScreen(text: 'Italian'),
        ),
      ],
    );
  }
}

class ItemSection extends StatelessWidget {
  const ItemSection({
    Key? key,
    required this.sizeCat,
    this.background,
    this.colorText,
    required this.text,
    required this.image,
    required this.screen,
  }) : super(key: key);

  final double sizeCat;
  final Color? background;
  final Color? colorText;
  final String text;
  final String image;
  final screen;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => screen,
        ),
      ),
      child: Container(
        width: sizeCat,
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: background ?? Colors.red[50],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              height: 90,
              image: AssetImage('assets/images/categories/$image'),
            ),
            Text(
              text,
              style: TextStyle(color: colorText ?? Colors.red[700], fontSize: 24, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
