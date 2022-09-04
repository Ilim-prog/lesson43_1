import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Icon icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          icon,
          SizedBox(
            height: 5,
          ),
          Text(text),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
