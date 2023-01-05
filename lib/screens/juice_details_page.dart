import 'package:days_of_flutter/widgets/buy_now_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/data.dart';
import '../widgets/CounterWidget.dart';
import '../widgets/ReviewsList.dart';
import '../widgets/SimpleRatingBar.dart';

class JuiceDetailsPage extends StatefulWidget {
  final JuiceEntity juice;

  const JuiceDetailsPage(this.juice, {super.key});

  @override
  _JuiceDetailsPageState createState() => _JuiceDetailsPageState();
}

class _JuiceDetailsPageState extends State<JuiceDetailsPage> {
  var count = 0;
  double bottomSectionHeight = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(bottom: bottomSectionHeight),
              children: [
                AspectRatio(
                  aspectRatio: 0.86,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      final imageHeight = constraints.maxHeight * 0.7;
                      final imageHorizontalMargin = constraints.maxWidth * 0.15;
                      final imageBottomMargin = constraints.maxHeight * 0.07;
                      return Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: widget.juice.color,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(32),
                                bottomRight: Radius.circular(32),
                              ),
                            ),
                            margin: const EdgeInsets.only(bottom: 26),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: imageHorizontalMargin,
                                  right: imageHorizontalMargin,
                                  bottom: imageBottomMargin,
                                ),
                                child: Image.asset(
                                  widget.juice.fullImage,
                                  height: imageHeight,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: CounterWidget(
                              currentCount: count,
                              color: widget.juice.color,
                              onIncreaseClicked: () {
                                setState(() {
                                  count++;
                                });
                              },
                              onDecreaseClicked: () {
                                setState(() {
                                  count--;
                                });
                              },
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Besom Orange Juice',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SimpleRatingBar()
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Drinking Orange Juice is not only enhances health body also strengthens muscles',
                        style:
                            TextStyle(color: Color(0xFFB0B1B4), fontSize: 16),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Reviews',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'See all',
                            style: TextStyle(
                              color: Color(0xFFE38F3B),
                              decoration: TextDecoration.underline,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      const ReviewsList(),
                    ],
                  ),
                )
              ],
            ),
            Container(
              color: widget.juice.color,
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 26, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Image.asset('assets/icons/back.png', width: 32),
                    onTap: () {
                      Get.back();
                    },
                  ),
                  const Text(
                    'Besom.',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  Image.asset('assets/icons/shop_white.png', width: 32)
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: bottomSectionHeight,
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: '\$',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: '25.99',
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      height: 48,
                      child: BuyNowButton(
                        text: 'Buy Now',
                        bgColor: widget.juice.color,
                        textColor: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
