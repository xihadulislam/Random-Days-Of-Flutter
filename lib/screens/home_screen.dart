import 'dart:ui';

import 'package:days_of_flutter/model/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/juice_card.dart';
import 'juice_details_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 10),
                    IconButton(
                        onPressed: () {},
                        icon: const Image(
                            image: AssetImage('assets/icons/menu.png'))),
                    const Expanded(
                      child: Center(
                        child: Text('Besom.',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.w800)),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Image(
                            image: AssetImage('assets/icons/cart.png'))),
                    const SizedBox(width: 10),
                  ],
                ),
                Expanded(
                  child: Center(
                    child: ListView.builder(
                      padding: const EdgeInsets.only(
                          left: 20, top: 20, right: 20, bottom: 80),
                      itemCount: juiceList.length,
                      itemBuilder: (context, index) {
                        return JuiceCard(
                            juice: juiceList[index],
                            onTap: () {
                              Get.to(JuiceDetailsPage(juiceList[index]));
                            });
                      },
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)),
                child: Container(
                  color: Colors.white.withOpacity(0.2),
                  height: 64,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 18.0, sigmaY: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/icons/Home.png'),
                        Image.asset('assets/icons/Search.png'),
                        Image.asset('assets/icons/Heart.png'),
                        Image.asset('assets/icons/account.png'),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
