import 'package:flutter/material.dart';
import 'package:flutter_login_exercise/Views/Register_Page/register_view.dart';
import 'package:flutter_login_exercise/util/images.dart';

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
              Padding(
                padding: const EdgeInsets.only(left: 129, top: 42, bottom: 21),
                child: Image.asset(
                  Images.imageLogo,
                  width: 129,
                  height: 129,
                ),
              ),
              const Text('Sign in'),
              ElevatedButton(
                child: const Text('Open route'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterView()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
