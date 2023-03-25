import 'package:flutter/material.dart';
import 'package:grocery_app/components/custem_button.dart';
import 'package:grocery_app/components/custem_text.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustemText(
                  text: 'Profile',
                  color: Colors.green,
                  fontsize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            const SizedBox(
              height: 122,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: const Icon(
                Icons.person,
                size: 60,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const CustemText(
              text: "Chanidu Madalagama",
              color: Colors.black,
              fontsize: 18,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 8,
            ),
            const CustemText(
              text: "Chanidumadalagama@gmail.com",
              color: Colors.black,
              fontsize: 13,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(
              height: 100,
            ),
            CustemButton(onTap: () {}, text: 'Log Out')
          ],
        ),
      ),
    );
  }
}
