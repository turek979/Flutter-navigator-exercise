import 'package:flutter/material.dart';
import 'package:flutter_login_exercise/util/images.dart';
import 'package:flutter_login_exercise/util/app_colors.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class AddPostWidget extends StatelessWidget {
  const AddPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
      body: Container(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.appLightPurple,
              border: Border.all(width: 5),
            ),
            child: Column(
              children: [
                Container(
                  color: AppColors.appPurple,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image.asset(Images.userLogo),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Turek',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                                width: 30,
                                height: 30,
                                child: Image.asset(Images.checkMark))
                          ],
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                                height: 30, child: Image.asset(Images.xMark)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: TextFormField(
                    maxLines: 18,
                    decoration: InputDecoration(
                      hintText: 'What is on your mind?',
                      hintStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4)),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 70,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero)),
                            onPressed: () {},
                            child: Text(
                              'Publish',
                              style: TextStyle(fontSize: 25),
                            ),
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
    ));
  }
}
