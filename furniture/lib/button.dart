import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  final Function() onTap;
  final Widget container;
  const Button({required this.onTap, required this.container})
  // : super(key: key) required Key key,
  ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: container,
    );
  }
}
