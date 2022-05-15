import 'package:flutter/material.dart';
class PopularImageItem extends StatelessWidget {
  const PopularImageItem(
      {Key? key, required this.imageUrl, required this.location})
      : super(key: key);

  final String imageUrl, location;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 170,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  location,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 64,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(""),
                    ),
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