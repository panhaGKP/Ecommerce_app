import 'package:flutter/material.dart';

import 'section_title.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Special for you",
          press: () {},
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image:
                    'https://expertreviews.b-cdn.net/sites/expertreviews/files/2022/04/best_android_phone_uk_2022_smartphones.jpg',
                category: "Smartphone",
                numOfBrands: 14,
                press: () {},
              ),
              SpecialOfferCard(
                image:
                    'https://www.dhresource.com/0x0/f2/albu/g11/M00/B7/E8/rBNaFl8g55GABQH_AAfRT0Pmxjk269.jpg',
                category: "Smartphone",
                numOfBrands: 10,
                press: () {},
              ),
              SizedBox(
                width: 20,
              ),
              SpecialOfferCard(
                image:
                    'https://www.dhresource.com/0x0/f2/albu/g11/M00/B7/E8/rBNaFl8g55GABQH_AAfRT0Pmxjk269.jpg',
                category: "Smartphone",
                numOfBrands: 14,
                press: () {},
              ),
              SizedBox(
                width: 20,
              ),
              SpecialOfferCard(
                image:
                    'https://www.dhresource.com/0x0/f2/albu/g11/M00/B7/E8/rBNaFl8g55GABQH_AAfRT0Pmxjk269.jpg',
                category: "Smartphone",
                numOfBrands: 14,
                press: () {},
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 245,
        height: 140,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.network(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15),
                    ])),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text.rich(
                  TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Brands"),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
