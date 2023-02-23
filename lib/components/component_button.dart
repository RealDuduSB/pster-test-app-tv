import 'package:flutter/material.dart';

class ComponentButton extends StatelessWidget {
  final double height;
  final double width;
  final GestureTapCallback onTap;
  final Widget child;

  const ComponentButton(
      {Key? key,
      required this.height,
      required this.width,
      required this.onTap,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(58, 129, 190, 1),
              Color.fromRGBO(26, 46, 93, 0.6)
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.centerRight,
          ),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 19, 19, 19),
                blurRadius: 2,
                spreadRadius: 0.5,
                offset: Offset(2, 2))
          ],
        ),
        child: Center(child: child),
      ),
    );
  }
}
