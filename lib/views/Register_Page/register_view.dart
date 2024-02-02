import 'package:flutter/material.dart';
import 'package:flutter_login_exercise/util/images.dart';
import 'package:flutter_login_exercise/widgets/textfield.dart';
import 'package:flutter_login_exercise/widgets/textfieldsuffix.dart';
import 'package:flutter_login_exercise/util/app_colors.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Images.eclipseLogo),
                    alignment: Alignment.topRight)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(height: 39),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Image.asset(Images.vector),
                        const SizedBox(width: 4),
                        Text('Back',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: AppColors.appPurple)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 81),
                  Row(
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: AppColors.appPurple),
                      ),
                    ],
                  ),
                  const SizedBox(height: 46),
                  const CustomTextField('Full Name', Images.userLogo),
                  const SizedBox(height: 40),
                  const CustomTextField('Email', Images.mailLogo),
                  const SizedBox(height: 40),
                  CustomTextFieldSuffix('Password',
                      suffix: Images.eyeLogo, prefix: Images.padlockLogo),
                  const SizedBox(height: 40),
                  CustomTextFieldSuffix('Confirm Password',
                      suffix: Images.eyeLogo, prefix: Images.padlockLogo),
                  const SizedBox(height: 60),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.appLightPurple,
                        minimumSize: const Size(390, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Sing Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account ?",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: AppColors.appPurple,
                          ),
                        ),
                        const SizedBox(width: 4),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: AppColors.appPurple,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
