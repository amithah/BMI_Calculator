import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.buttonTitle, this.onTap});
  final VoidCallback? onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Text(
              buttonTitle,
              style: kBottomTextStyle,
            ),
          ),
        ),
        margin: const EdgeInsets.only(top: 30.0),
        color: kBottomColor,
        height: kBottomContainerHeight,
      ),
    );
  }
}
