import 'package:flutter/material.dart';

class AppBottomItem extends StatelessWidget {
  final Function() onPressed;
  final dynamic icon;
  final bool isSelected;

  const AppBottomItem(
      {Key? key,
      required this.onPressed,
      required this.icon,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      isSelected: isSelected,
    );
  }
}
