import 'package:flutter/material.dart';

import '../constants.dart';
class ButtonButton extends StatelessWidget {
  ButtonButton({required this.onTop, required this.buttonTitle});
  final VoidCallback? onTop;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTop,
      child: Container(
        child: Center(
            child: Text(
              buttonTitle,
              style: kLagreButtonTextStyle,
            )),
        color: kButtonContainerColor,
        padding: EdgeInsets.only(bottom: 5.0),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kButtonContainerHeight,
      ),
    );
  }
}