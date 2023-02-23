import 'package:flutter/material.dart';

class ComponentContainer extends StatelessWidget {
  final Widget widget;
  final double height;
  final double? vertical;
  final double? horizontal;
  final Color? color;

  const ComponentContainer(
      {Key? key,
      required this.widget,
      required this.height,
      this.vertical,
      this.horizontal,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: height,
        margin: const EdgeInsets.all(16),
        padding: EdgeInsets.symmetric(
            vertical: vertical ?? 4.0, horizontal: horizontal ?? 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color ?? Colors.black,
        ),
        child: widget);
  }
}
