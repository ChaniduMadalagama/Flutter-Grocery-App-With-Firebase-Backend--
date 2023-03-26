import 'package:flutter/material.dart';
import 'package:grocery_app/components/custem_button.dart';
import 'package:grocery_app/components/custem_text.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 300,
                height: 333,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 5, spreadRadius: 2),
                    BoxShadow(
                        color: Colors.white, blurRadius: 1, spreadRadius: 1),
                  ],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/smiling.png'),
                      const SizedBox(
                        height: 5,
                      ),
                      const CustemText(
                        text: 'Thanks for Buying\n From Us!',
                        color: Colors.green,
                        fontsize: 20,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 320,
                  ),
                  CustemButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      text: 'See Your Oder'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
