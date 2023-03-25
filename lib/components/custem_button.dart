import 'package:flutter/material.dart';
import 'package:grocery_app/components/custem_text.dart';
import 'package:grocery_app/utils/app_colors.dart';

class CustemButton extends StatelessWidget {
  const CustemButton({
    required this.onTap,
    required this.text,
    Key? key,
  }) : super(key: key);

  final Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 259,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppClors.primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: CustemText(
            text: text,
            fontsize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
