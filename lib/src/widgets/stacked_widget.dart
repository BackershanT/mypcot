import 'package:flutter/material.dart';

class StackedWidget extends StatelessWidget {
  final List<Widget> items;
  final double size;
  final double xShift;
  const StackedWidget(
      {Key? key, required this.items,
         this.size=40,
         this.xShift=10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allItems = items
        .asMap()
        .map((index, item) {
          final left = size - xShift;
          final value = Container(
            width: size,
            height: size,
            child: item,
            margin: EdgeInsets.only(left: left* index)
          );
          return MapEntry(index, value);
        })
        .values
        .toList();
    return Container(
        child: Stack(
      children: allItems,
    ));
  }
}
