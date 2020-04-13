import 'package:Moview/app/app_color.dart';
import 'package:flutter/material.dart';

class BackgroundLinear extends StatelessWidget {
  final Color beginColor;
  final Color endColor;
  final Alignment begin;
  final Alignment end;
  final Widget child;
  const BackgroundLinear({
    Key key,
    this.beginColor = AppColor.primaryColor,
    this.endColor = AppColor.secundaryColor,
    this.begin = Alignment.topLeft,
    this.end = Alignment.bottomRight,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[beginColor, endColor],
          begin: begin,
          end: end,
        ),
      ),
      child: child ?? Container(),
    );
  }
}