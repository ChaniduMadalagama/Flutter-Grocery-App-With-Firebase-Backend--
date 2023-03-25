import 'package:flutter/material.dart';
import 'package:grocery_app/components/custem_text.dart';
import 'package:grocery_app/screen/home/wigets/product_grid.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/asset_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    AssetConstant.hambergericon,
                    width: 24,
                    height: 24,
                  ),
                  Image.asset(
                    AssetConstant.shopingcart,
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              const SizedBox(height: 25),
              CustemText(
                text: 'Vegetables',
                color: AppClors.primaryColor,
                fontsize: 20,
              ),
              const SizedBox(height: 42),
              ProductGrid()
            ],
          ),
        ),
      ),
    );
  }
}
