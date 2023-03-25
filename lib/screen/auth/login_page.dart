import 'package:flutter/material.dart';
import 'package:grocery_app/components/custem_button.dart';
import 'package:grocery_app/components/custem_text.dart';
import 'package:grocery_app/components/custem_textfield.dart';
import 'package:grocery_app/components/social_button.dart';
import 'package:grocery_app/screen/auth/fogot_password.dart';
import 'package:grocery_app/screen/home/home_screen.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/asset_constant.dart';
import 'package:grocery_app/utils/utill_function.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 96),
                CustemText(
                  text: 'Login',
                  fontsize: 25,
                  color: AppClors.primaryColor,
                ),
                //const SizedBox(height: 41),
                Image.asset(
                  AssetConstant.signInImage,
                  width: 330,
                  height: 225,
                ),
                const SizedBox(height: 40),
                CustemTextfield(
                  controller: _email,
                  hintText: 'Email',
                ),
                const SizedBox(height: 8),
                CustemTextfield(
                  controller: _password,
                  hintText: 'Password',
                  isobscureText: true,
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      UtillFunction.navigateTo(context, const FogotPassword());
                    },
                    child: const CustemText(
                      text: 'Forgot your password',
                      fontsize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 29),
                CustemButton(
                    onTap: () {
                      UtillFunction.navigateTo(context, const HomeScreen());
                    },
                    text: 'Login'),
                const SizedBox(height: 23),
                const CustemText(
                    text: 'Or login with social account',
                    fontsize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(
                      onTap: () {},
                      iconparth: AssetConstant.googlelogo,
                    ),
                    const SizedBox(width: 16),
                    SocialButton(
                      onTap: () {},
                      iconparth: AssetConstant.facebooklogo,
                    ),
                  ],
                ),
                const SizedBox(height: 105),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
