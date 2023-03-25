import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    required this.iconparth,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final String iconparth;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('test');
      },
      child: Container(
        width: 92,
        height: 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white,
        ),
        child: Image.asset(iconparth),
      ),
    );
  }
}
