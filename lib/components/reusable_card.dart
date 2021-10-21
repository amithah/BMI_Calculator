import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.mycolor, this.carchild, this.onPress});
  final Color? mycolor;
  final Widget? carchild;

  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: carchild,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: mycolor,
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
