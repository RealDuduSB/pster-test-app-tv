import 'package:flutter/material.dart';

class ComponentImage extends StatelessWidget {
  final double height;
  final double width;
  final String asset;
  final BoxFit? boxFit;

  const ComponentImage(
      {Key? key,
      required this.height,
      required this.width,
      required this.asset,
      this.boxFit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      asset,
      height: height,
      width: width,
      fit: boxFit,
    );
  }
}
