import 'package:flutter/material.dart';
import 'package:grocery_app/components/custem_button.dart';
import 'package:grocery_app/components/custem_text.dart';
import 'package:grocery_app/components/custem_textfield.dart';
import 'package:grocery_app/screen/auth/login_page.dart';
import 'package:grocery_app/screen/home/home_screen.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/asset_constant.dart';
import 'package:grocery_app/utils/utill_function.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
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
                text: 'SignUp',
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
                controller: _name,
                hintText: 'Name',
              ),
              const SizedBox(height: 8),
              CustemTextfield(
                controller: _email,
                hintText: 'Email',
                isobscureText: true,
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
                    UtillFunction.navigateTo(context, const SignIn());
                  },
                  child: const CustemText(
                    text: 'Already have an account?',
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
                  text: 'SignUp'),
            ],
          ),
        ),
      ),
    );
  }
}
