import 'package:atascados/widgets/components/shared/app_bottom_item.dart';
import 'package:flutter/material.dart';

BottomAppBar setAppBottomBar(List<AppBottomItem> appBottonItems,
    {Color? backgroundColor = Colors.transparent,
    double? elevation = 1,
    double? childHeight = 60}) {
  return BottomAppBar(
      color: backgroundColor,
      elevation: elevation,
      child: SizedBox(
          height: childHeight,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: appBottonItems)));
}
