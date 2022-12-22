import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  PromoCard({Key? key, required this.image}) : super(key: key);

  String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.63 / 3,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: const [
                    0.1,
                    0.9
                  ],
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.1)
                  ])),
        ),
      ),
    );
  }
}
