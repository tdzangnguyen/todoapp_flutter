import "package:flutter/material.dart";

class ButtonHelper extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  ButtonHelper({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.yellow[500],
      child: Text(text),
    );
  }
}
