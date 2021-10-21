import 'package:flutter/material.dart';
import '../constants.dart';

class cardTile extends StatelessWidget {
  cardTile({required this.myIcon, required this.label});
  final IconData myIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            myIcon,
            size: kIconSize,
          ),
          SizedBox(
            height: kSizedBoxHeight,
          ),
          Text(
            label,
            style: kLabelTextStyle,
          ),
        ],
      ),
    );
  }
}
