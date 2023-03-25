import 'package:flutter/material.dart';
import 'package:grocery_app/cart/widgets/cartitem.dart';
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
                  itemBuilder: (context, index) =>  CartItem(cartItemModle: cartItems[index],),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
