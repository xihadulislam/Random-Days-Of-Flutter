import 'package:flutter/material.dart';

import '../model/data.dart';

class ReviewsList extends StatelessWidget {
  const ReviewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, index) => const SizedBox(width: 18),
        itemBuilder: (_, index) {
          if (index == reviewImages.length) {
            return Image.asset(addImageUrl);
          }

          return Image.asset(reviewImages[index]);
        },
        itemCount: reviewImages.length + 1,
      ),
    );
  }
}
