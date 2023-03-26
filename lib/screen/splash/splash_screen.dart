import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/components/custem_text.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/asset_constant.dart';

import '../auth/login_page.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const SignIn()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInDown(
              child: Image.asset(
                AssetConstant.splashSceenImage,
                width: 202,
                height: 133,
              ),
            ),
            const SizedBox(height: 72),
            FadeInUp(
              child: CustemText(
                text: 'Shop Your\n Daily Necessary',
                color: AppClors.primaryColor,
                fontsize: 28,
              ),
            )
          ],
        ),
      ),
    );
  }
}
