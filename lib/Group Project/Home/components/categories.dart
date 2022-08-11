import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {'text': 'Flash Deal', 'icon': Icons.flash_auto},
      {
        "text": "Bill",
        'icon': Icons.receipt,
      },
      {
        "text": "Game",
        'icon': Icons.games,
      },
      {
        "text": "Daily Gift",
        'icon': Icons.gif_box_outlined,
      },
      {
        "text": "More",
        'icon': Icons.more,
      },
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
            (index) => CategoriesCard(
              icon: categories[index]['icon'],
              text: categories[index]['text'],
              //press: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    Key? key,
    required this.text,
    required this.icon,
    //required this.press,
  }) : super(key: key);

  final String text;
  final IconData icon;
  //final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //onTap: press,
      child: SizedBox(
        width: 55,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  icon,
                  color: Color.fromARGB(255, 201, 134, 89),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
            // Text(
            //   "Flash Deal",
            //   textAlign: TextAlign.center,
            // ),
          ],
        ),
      ),
    );
  }
}
