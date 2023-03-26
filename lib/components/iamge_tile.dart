import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
   ImageTile({
    required this.height,
    required this.width,
    required this.imgUrl,
    super.key,
  });
  double width;
  double height;
  String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.only(right: 20),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(imgUrl),
          )
        ],
      ),
    );
  }
}