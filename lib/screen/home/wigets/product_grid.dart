import 'package:flutter/material.dart';
import 'package:grocery_app/models/vegitable.dart';
import 'package:grocery_app/screen/home/wigets/product_tile.dart';
import 'package:grocery_app/utils/asset_constant.dart';

class ProductGrid extends StatelessWidget {
  ProductGrid({
    Key? key,
  }) : super(key: key);

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
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 44,
        ),
        itemCount: vegitables.length,
        itemBuilder: (context, index) {
          return ProductTile(vegitables: vegitables[index]);
        },
      ),
    );
  }
}
