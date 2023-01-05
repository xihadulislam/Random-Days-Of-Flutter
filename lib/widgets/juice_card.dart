import 'package:days_of_flutter/model/data.dart';
import 'package:flutter/material.dart';

import 'buy_now_button.dart';

class JuiceCard extends StatelessWidget {
  JuiceCard({Key? key, required this.juice, this.onTap}) : super(key: key);

  final JuiceEntity juice;
  var onTap;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
    return AspectRatio(
      aspectRatio: 1.25,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final topPadding = constraints.maxHeight * 0.2;
          final leftPadding = constraints.maxWidth * 0.1;
          final imageWidth = constraints.maxWidth * 0.35;
          return GestureDetector(
            onTap: onTap,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: topPadding),
                  decoration: BoxDecoration(
                      color: juice.color,
                      borderRadius: BorderRadius.circular(24)),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: topPadding,
                          left: leftPadding,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              juice.name,
                              style: textStyle.copyWith(fontSize: 20),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '\$',
                                    style: textStyle.copyWith(fontSize: 16),
                                  ),
                                  TextSpan(
                                    text: juice.price,
                                    style: textStyle.copyWith(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 32,
                              width: 80,
                              child: BuyNowButton(
                                text: 'Buy Now',
                                textColor: juice.color,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: imageWidth,
                      child: Image.asset(juice.image),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
