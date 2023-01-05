import 'package:flutter/material.dart';

class SimpleRatingBar extends StatelessWidget {
  const SimpleRatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => const Icon(
          Icons.star,
          color: Color(0xFFFFBA00),
          size: 18,
        ),
      ),
    );
  }
}
