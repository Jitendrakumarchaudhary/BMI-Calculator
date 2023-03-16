import 'package:flutter/material.dart';

class ReusedCard extends StatelessWidget {
  ReusedCard({required this.Colour, this.ChildCard, this.onPress});
  late final Color Colour;
  late final Widget? ChildCard;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: ChildCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Colour, borderRadius: BorderRadius.circular(10.0)),
      ),

    );
  }
}
