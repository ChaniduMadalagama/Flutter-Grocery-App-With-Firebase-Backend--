import 'package:flutter/material.dart';
import 'package:grocery_app/components/custem_button.dart';
import 'package:grocery_app/components/custem_text.dart';
import 'package:grocery_app/components/custem_textfield.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/asset_constant.dart';

class FogotPassword extends StatefulWidget {
  const FogotPassword({super.key});

  @override
  State<FogotPassword> createState() => _FogotPasswordState();
}

class _FogotPasswordState extends State<FogotPassword> {
  final TextEditingController _email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 96),
              CustemText(
                text: 'Forgot Password',
                fontsize: 25,
                color: AppClors.primaryColor,
              ),
              //const SizedBox(height: 41),
              Image.asset(
                AssetConstant.signInImage,
                width: 330,
                height: 225,
              ),
              const SizedBox(height: 50),
              const CustemText(
                text:
                    'Please, enter your email address. You will receive a link to create a new password via email.',
                fontsize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 16),
              CustemTextfield(controller: _email, hintText: 'Email'),
              const SizedBox(height: 68),
              CustemButton(onTap: () {}, text: 'Send'),
            ],
          ),
        ),
      ),
    );
  }
}
