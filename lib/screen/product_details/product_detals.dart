import 'package:flutter/material.dart';
import 'package:grocery_app/components/custem_button.dart';
import 'package:grocery_app/components/custem_text.dart';
import 'package:grocery_app/models/vegitable.dart';
import 'package:grocery_app/screen/product_details/widgets/counter_section.dart';
import 'package:grocery_app/screen/product_details/widgets/related_product.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.vegitable});

  final Vegitable vegitable;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              height: 280,
              decoration: const BoxDecoration(
                color: Color(0xffE5E5E5),
              ),
              child: Center(
                child: Image.asset(
                  widget.vegitable.image,
                  width: 188,
                  height: 188,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 256,
              child: Container(
                width: size.width,
                height: size.height,
                padding: const EdgeInsets.fromLTRB(29, 34, 29, 0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34),
                    topRight: Radius.circular(34),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustemText(
                          text: widget.vegitable.name,
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey, width: 2),
                          ),
                          child: const CounterSection(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    CustemText(
                      text: "Rs.${widget.vegitable.price.toString()}0 /Kg",
                      color: Colors.black,
                      fontsize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    CustemText(
                      text: widget.vegitable.desc,
                      color: Colors.black,
                      fontsize: 13,
                      fontWeight: FontWeight.w500,
                      textalign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    const CustemText(
                      text: 'Related items',
                      color: Colors.green,
                      fontsize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    RelatedProduct()
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustemButton(onTap: () {}, text: "Add to Cart"),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
