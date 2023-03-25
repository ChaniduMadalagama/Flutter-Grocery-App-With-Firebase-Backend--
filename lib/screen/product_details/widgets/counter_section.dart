import 'package:flutter/material.dart';
import 'package:grocery_app/components/custem_text.dart';

class CounterSection extends StatelessWidget {
  const CounterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.add,
          size: 18,
        ),
        SizedBox(
          width: 10,
        ),
        CustemText(
          text: "1",
          color: Colors.black,
          fontsize: 18,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.add,
          size: 18,
        )
      ],
    );
  }
}
