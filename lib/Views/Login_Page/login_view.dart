import 'package:flutter/material.dart';
import 'package:flutter_login_exercise/Views/Register_Page/register_view.dart';
import 'package:flutter_login_exercise/util/images.dart';
import 'package:flutter_login_exercise/util/app_colors.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 42),
              Image.asset(
                Images.imageLogo,
                width: 129,
                height: 129,
              ),
              const SizedBox(height: 21),
              Text(
                'Sign in',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: AppColors.appPurple,
                ),
              ),
              const SizedBox(height: 46),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Image.asset(Images.userLogo),
                  hintText: 'Email or User Name',
                  hintStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(0, 4),
                            blurRadius: 4.4,
                            color: Color.fromRGBO(0, 0, 0, 0.25))
                      ]),
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: AppColors.appBorderPurple, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: AppColors.appBorderPurple, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: AppColors.appBorderPurple, width: 2)),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.appLightPurple,
                    minimumSize: const Size(390, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterView()),
                  );
                },
                child: const Text(
                  'Sing in',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
