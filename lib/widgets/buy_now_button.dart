import 'package:flutter/material.dart';

class BuyNowButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const BuyNowButton({
    Key? key,
    required this.text,
    this.bgColor = Colors.white,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        primary: bgColor,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w700,
          fontSize: 12,
        ),
      ),
    );
  }
}
