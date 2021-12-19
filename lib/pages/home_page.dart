import 'package:flutter/material.dart';
import 'package:cookfinder/widgets/others.dart';
import 'package:cookfinder/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sizeCat = 140;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarTitle(),
      body: ListView(
        children: [
          WelcomeCards(size: size),
          SectionWidget(
            items: Categories(sizeCat: sizeCat),
            sectionHeight: 140,
            title: 'Categories',
          ),
          SizedBox(height: 30),
          SectionWidget(
            items: Recommeded(),
            sectionHeight: 350,
            title: 'Recommend',
          ),
        ],
      ),
    );
  }
}
