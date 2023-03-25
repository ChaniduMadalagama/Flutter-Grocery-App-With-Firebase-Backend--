import 'package:flutter/material.dart';
import 'package:grocery_app/components/custem_text.dart';
import 'package:grocery_app/models/vegitable.dart';
import 'package:grocery_app/screen/product_details/product_detals.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/utill_function.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    Key? key,
    required this.vegitables,
  }) : super(key: key);

  final Vegitable vegitables;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        UtillFunction.navigateTo(
            context,
            ProductDetails(
              vegitable: vegitables,
            ));
      },
      child: Container(
        height: 177,
        decoration: BoxDecoration(
          color: AppClors.vegicadcolor,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(vegitables.image),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // const SizedBox(
            //   height: 1,
            // ),
            const Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.favorite_border),
            ),
            Container(
              height: 38,
              padding: const EdgeInsets.symmetric(horizontal: 9),
              decoration: BoxDecoration(
                color: AppClors.primaryColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustemText(
                    text: vegitables.name,
                    color: Colors.white,
                    fontsize: 14,
                  ),
                  CustemText(
                    text: "Rs. ${vegitables.price.toString()}.00",
                    color: Colors.black,
                    fontsize: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
