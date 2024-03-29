import 'package:flutter/material.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.svgScr,
    this.numOfItems = 0,
    required this.press,
  }) : super(key: key);

  final IconData svgScr;
  final int numOfItems;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        //overflow: OverflowBar.visible,
        children: [
          Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 237, 235, 231),
              shape: BoxShape.circle,
            ),
            child: Icon(svgScr),
          ),
          if (numOfItems != 0)
            Positioned(
              right: 0,
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color: Color(0XFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "$numOfItems",
                    style: TextStyle(
                      fontSize: 10,
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
