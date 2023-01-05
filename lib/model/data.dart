import 'package:flutter/material.dart';

final juiceList = [
  JuiceEntity(
    name: 'Besom Yellow Juice',
    image: 'assets/images/juice_1.png',
    fullImage: 'assets/images/juice_1_full.png',
    price: '19.99',
    color: const Color(0xFFF3BE39),
  ),
  JuiceEntity(
    name: 'Besom Orange Juice',
    image: 'assets/images/juice_2.png',
    fullImage: 'assets/images/juice_1_full.png',
    price: '45.99',
    color: const Color(0xFFDC691F),
  ),
  JuiceEntity(
    name: 'Besom Yellow Juice',
    image: 'assets/images/juice_1.png',
    fullImage: 'assets/images/juice_1_full.png',
    price: '9.99',
    color: const Color(0xFFF3BE39),
  ),
  JuiceEntity(
    name: 'Besom Orange Juice',
    image: 'assets/images/juice_2.png',
    fullImage: 'assets/images/juice_1_full.png',
    price: '25.99',
    color: const Color(0xFFDC691F),
  ),
];

final List<String> reviewImages = [
  'assets/images/one.png',
  'assets/images/two.png',
  'assets/images/three.png',
  'assets/images/four.png',
];
const addImageUrl = 'assets/icons/add.png';

class JuiceEntity {
  final String name;
  final String image;
  final String fullImage;
  final String price;
  final Color color;

  JuiceEntity({
    required this.name,
    required this.image,
    required this.fullImage,
    required this.price,
    required this.color,
  });
}
