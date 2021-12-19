import 'package:flutter/material.dart';

class DotsIndicatorWidget extends StatelessWidget {
  final int cant;
  final Duration duration;
  final Size sizeDot;
  final double roundedDotBorder;
  final Size sizeDotActive;
  final double padding;
  final horizontalAligment;
  final verticalAligment;
  final disableDotColor;
  final activeDotColor;
  final int position;

  DotsIndicatorWidget({
    required this.cant,
    required this.duration,
    this.padding = 5,
    this.sizeDot = const Size(10.0, 10.0),
    this.sizeDotActive = const Size(24.0, 10.0),
    this.roundedDotBorder = 10,
    this.horizontalAligment = MainAxisAlignment.center,
    this.verticalAligment = CrossAxisAlignment.center,
    this.disableDotColor = Colors.grey,
    this.activeDotColor = Colors.red,
    this.position = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: horizontalAligment,
      crossAxisAlignment: verticalAligment,
      children: [
        for (var i = 0; i < cant; i++)
          AnimatedContainer(
            duration: duration,
            margin: EdgeInsets.symmetric(horizontal: padding),
            height: position != i ? sizeDot.height : sizeDotActive.height,
            width: position != i ? sizeDot.width : sizeDotActive.width,
            decoration: BoxDecoration(
              color: position == i ? activeDotColor : disableDotColor,
              borderRadius: BorderRadius.circular(roundedDotBorder),
            ),
          ),
      ],
    );
  }
}
