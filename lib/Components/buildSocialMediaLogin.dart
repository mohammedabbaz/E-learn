// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_learn/Controllers/LoginController.dart';
import 'package:e_learn/Core/Data/constant/Function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



import 'AppText.dart';

class SocialLoginButton extends StatelessWidget {
  final LoginController controller;
  const SocialLoginButton({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
 color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
               width: MediaQuery.of(context).size.width / 6,
              height: 1.h,
            ),
            AppText(
              text: " or sign in with",
              fontsize: 15.sp,
              fontWeight: FontWeight.normal,
              color: Theme.of(context).colorScheme.secondary,
              overFlow: TextOverflow.clip,
            ),
            Container(
               color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
              width: MediaQuery.of(context).size.width / 6,
              height: 1.h,
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _SocialButton(() async {
              // await controller.login(2);
            }, "google"),
            _SocialButton(() async {
              // await controller.login(3);
            }, "facebook"),
            _SocialButton(() async {
              // await controller.login(4);
            }, "apple"),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }
}

Widget _SocialButton(void Function() ontap, String image) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      height: 50.h,
      width: 50.h,
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(Functions.getImage(image)),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
