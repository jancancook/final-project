import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testt/color.dart';
import 'package:testt/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  "img/loginimg.png"
                ),
                fit: BoxFit.cover
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                  child: InkWell(
                    onTap:(){
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back, size: 25,
                      color: AppColor.colorRed,),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login Page",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Sign into your account",
                  style: TextStyle(
                      fontSize: 20,
                      color: AppColor.homePagePlanColor
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.homePageBackground,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2)
                      )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your email",
                        prefixIcon: Icon(Icons.email, color: Colors.deepOrangeAccent,),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: AppColor.homePageBackground,
                          width: 1.0
                        )
                      ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: AppColor.homePageBackground,
                                width: 1.0
                            )
                        ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.homePageBackground,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter your password",
                        prefixIcon: Icon(Icons.password_outlined, color: Colors.deepOrangeAccent,),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: AppColor.homePageBackground,
                                width: 1.0
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: AppColor.homePageBackground,
                                width: 1.0
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: Container(),),
                    Text(
                      "Sign into your account",
                      style: TextStyle(
                          fontSize: 20,
                          color: AppColor.homePagePlanColor
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 70,),
          Container(
            width: w * 0.5,
            height: h * 0.08,
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
                "Sign in",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColor.homePageBackground,
                ),
              ),
            ),
          ),
          SizedBox(height: w * 0.2,),
          RichText(text: TextSpan(
            text: "Don\'t have an account???",
            style: TextStyle(
              color: AppColor.homePagePlanColor,
              fontSize: 20,
            ),
            children: [
              TextSpan(
              text: " Create acount",
              style: TextStyle(
                color: AppColor.colorRed,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()..onTap = () => Get.to(()=>SignUpPage()) // move to the SignUpPage
              ),
            ]
          ))
        ],
      ),
    );
  }
}
