import 'package:flutter/material.dart';

class CustomElevatedButtom extends StatelessWidget {
  const CustomElevatedButtom({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: LinearBorder(),
        backgroundColor: Colors.orange,
        minimumSize: Size(70, 50),
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(color: Colors.black)),
    );
  }
}
