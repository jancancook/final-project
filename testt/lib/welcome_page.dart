import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.homePageBackground,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "img/signup.png"
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: [
                SizedBox(height: h * 0.18,),
                CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 40,
                  backgroundImage: AssetImage(
                      "img/profile.png"
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 40,),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome hehehe",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  "Q@gmail.com",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 170,),
          Container(
            width: w * 0.5,
            height: h * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(
                        "img/loginbtn.png"
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Center(
              child: Text(
                "Sign out",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColor.homePageBackground,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
