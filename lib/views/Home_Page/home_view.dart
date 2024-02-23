import 'package:flutter/material.dart';
import 'package:flutter_login_exercise/Views/Login_Page/login_view.dart';
import 'package:flutter_login_exercise/db/post_database.dart';
import 'package:flutter_login_exercise/model/post.dart';
import 'package:flutter_login_exercise/util/app_colors.dart';
import 'package:flutter_login_exercise/util/images.dart';
import 'package:flutter_login_exercise/widgets/addpost.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_login_exercise/widgets/postfield.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late List<Post> posts;
  bool isLoading = false;

  @override
  void initState(){
    super.initState();

    refreshPosts();
  }

  Future refreshPosts() async{
    setState(() => isLoading = true);

    this.posts = await PostDatabase.instance.readAllPosts();

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          PostField(),
          Spacer(),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddPostWidget()),
                        );
                      },
                      child: Text(
                        '+',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              color: AppColors.appLightPurple,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Container(
                          height: 30,
                          width: 30,
                          child: Image.asset(Images.user2Logo)),
                    ),
                    GestureDetector(
                      child: Container(
                          height: 30,
                          width: 30,
                          child: Image.asset(Images.settingsLogo)),
                    ),
                    GestureDetector(
                      child: Container(
                          height: 30,
                          width: 30,
                          child: Image.asset(Images.logoutlogo)),
                      onTap: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginView()),
                        );
                        SharedPreferences pref =
                            await SharedPreferences.getInstance();
                        await pref.setBool('isLogged', false);
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
