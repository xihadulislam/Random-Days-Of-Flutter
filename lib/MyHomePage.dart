import 'package:days_of_flutter/widgets/Banner.dart';
import 'package:days_of_flutter/widgets/top_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:days_of_flutter/widgets/PromoCard.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black87,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopAppBar(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Promo Today",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 220,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        PromoCard(image: "assets/images/one.jpg"),
                        PromoCard(image: "assets/images/two.jpg"),
                        PromoCard(image: "assets/images/three.jpg"),
                        PromoCard(image: "assets/images/four.jpg"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const MyBanner()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
