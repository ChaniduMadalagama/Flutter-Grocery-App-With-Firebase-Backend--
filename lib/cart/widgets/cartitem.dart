import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/components/custem_text.dart';
import 'package:grocery_app/components/iamge_tile.dart';
import 'package:grocery_app/models/cart_item_modle.dart';

class CartItem extends StatelessWidget {
  CartItem({
    required this.cartItemModle,
    super.key,
  });

  CartItemModle cartItemModle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 90,
      width: size.width,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
              color: Colors.black12, blurRadius: 20, offset: Offset(0, 10)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageTile(
            height: 70,
            width: 70,
            imgUrl: 'assets/images/cartimage.png',
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cartItemModle.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'poppins',
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 7),
              Row(
                children: [
                  const Icon(
                    Icons.remove,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    cartItemModle.qty.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'poppins',
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Icon(
                    Icons.add,
                    size: 20,
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.close,
                color: Colors.red,
              ),
              Text(
                cartItemModle.totalValue.toString(),
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }
}
