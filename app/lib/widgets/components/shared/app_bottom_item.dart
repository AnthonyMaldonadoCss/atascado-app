import 'package:flutter/material.dart';

class AppBottomItem extends StatefulWidget {
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
  _AppBottomItemState createState() => _AppBottomItemState();
}

class _AppBottomItemState extends State<AppBottomItem> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: widget.onPressed,
      icon: widget.icon,
      isSelected: widget.isSelected,
    );
  }
}
