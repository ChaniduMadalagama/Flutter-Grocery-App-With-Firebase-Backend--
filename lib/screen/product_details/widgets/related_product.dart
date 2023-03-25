import 'package:flutter/material.dart';
import 'package:grocery_app/components/custem_text.dart';
import 'package:grocery_app/models/vegitable.dart';
import 'package:grocery_app/utils/asset_constant.dart';

class RelatedProduct extends StatelessWidget {
   RelatedProduct({
    super.key,
  });

  final List<Vegitable> vegitables = [
    Vegitable(
      id: 1,
      name: 'Tomato',
      price: 2.99,
      image: AssetConstant.tomato,
    ),
    Vegitable(
      id: 2,
      name: 'Potato',
      price: 2.99,
      image: AssetConstant.pumking,
    ),
    Vegitable(
      id: 3,
      name: 'Brinjal',
      price: 2.99,
      image: AssetConstant.batu,
    ),
    Vegitable(
      id: 4,
      name: 'Cabbage',
      price: 2.99,
      image: AssetConstant.cabbage,
    ),
    Vegitable(
      id: 5,
      name: 'Carrot',
      price: 2.99,
      image: AssetConstant.beetroot,
    ),
    Vegitable(
      id: 6,
      name: 'Cucumber',
      price: 2.99,
      image: AssetConstant.cucumber,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
                width: 83,
                height: 83,
                decoration: BoxDecoration(
                  color: const Color(0xffEBF8EE),
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(vegitables[index].image), fit: BoxFit.fitWidth),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 24,
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white.withOpacity(0.7),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustemText(
                            text: vegitables[index].name,
                            color: Colors.black,
                            fontsize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                          CustemText(
                            text: vegitables[index].price.toString(),
                            color: Colors.black,
                            fontsize: 11,
                            fontWeight: FontWeight.w500,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          separatorBuilder: (context, index) => const SizedBox(width: 21),
          itemCount: vegitables.length),
    );
  }
}
