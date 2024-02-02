import 'package:flutter/material.dart';
import 'package:flutter_login_exercise/Views/Login_Page/login_view.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_login_exercise/util/images.dart';
import 'package:flutter_login_exercise/views/Home_Page/home_view.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs =await SharedPreferences.getInstance();
  var isLogged =prefs.getBool('isLogged');
  print(isLogged);
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: isLogged==true?HomeView():LoginView(),
    debugShowCheckedModeBanner: false,
  ));
}

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSplashScreen(
//       splash: Container(
//         decoration: const BoxDecoration(
//             image: DecorationImage(image: AssetImage(Images.imageLogo))),
//       ),
//       nextScreen: isLogged==true?HomeView():LoginView(),
//       splashIconSize: 250,
//       splashTransition: SplashTransition.fadeTransition,
//       pageTransitionType: PageTransitionType.topToBottom,
//     );
//   }
// }
