import 'package:flutter/material.dart';
import 'package:flutter_login_exercise/Views/Register_Page/register_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: ElevatedButton(
              child: const Text('Open route'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterView()),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
