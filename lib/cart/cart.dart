import 'package:flutter/material.dart';
import 'package:grocery_app/cart/sucess.dart';
import 'package:grocery_app/cart/widgets/cartitem.dart';
import 'package:grocery_app/components/custem_button.dart';
import 'package:grocery_app/components/custem_text.dart';
import 'package:grocery_app/models/cart_item_modle.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<CartItemModle> cartItems = [
    CartItemModle(id: 1, name: "Apple", price: 1.99, qty: 2, totalValue: 3.98),
    CartItemModle(id: 2, name: "Banana", price: 0.99, qty: 3, totalValue: 2.97),
    CartItemModle(id: 3, name: "Milk", price: 2.49, qty: 1, totalValue: 2.49),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustemText(text: 'Cart', color: Colors.green),
                ],
              ),
              const SizedBox(height: 18),
              Expanded(
                child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) => CartItem(
                    cartItemModle: cartItems[index],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 250,
        child: Padding(
          padding: const EdgeInsets.only(top: 30, right: 50, left: 50),
          child: Column(
            children: [
              const CartAmountRow(
                text: 'Item total',
                price: 'Rs 20.49',
              ),
              const SizedBox(
                height: 10,
              ),
              const CartAmountRow(
                text: 'Discount',
                price: 'Rs -10',
              ),
              const SizedBox(
                height: 10,
              ),
              const CartAmountRow(
                text: 'Tax',
                price: 'Rs 2',
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustemText(
                    text: 'Total',
                    color: Colors.black,
                    fontsize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  CustemText(
                    text: 'Rs 12.49',
                    color: Colors.black,
                    fontsize: 20,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustemButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Success()));
                  },
                  text: 'Place Order')
            ],
          ),
        ),
      ),
    );
  }
}

class CartAmountRow extends StatelessWidget {
  const CartAmountRow({
    required this.price,
    required this.text,
    super.key,
  });
  final String text;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustemText(
          text: text,
          color: Colors.black,
          fontsize: 14,
          fontWeight: FontWeight.w400,
        ),
        CustemText(
          text: price,
          color: Colors.black,
          fontsize: 14,
          fontWeight: FontWeight.w400,
        )
      ],
    );
  }
}
