import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testt/auth_controller.dart';

import 'color.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    List images = [
      "g.png",
      "f.png",
      "t.png"
    ];

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
                    controller: emailController,
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
                    controller: passwordController,
                    obscureText: true,
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
                // Row(
                //   children: [
                //     Expanded(child: Container(),),
                //     Text(
                //       "Sign into your account",
                //       style: TextStyle(
                //           fontSize: 20,
                //           color: AppColor.homePagePlanColor
                //       ),
                //     )
                //   ],
                // ),
              ],
            ),
          ),
          SizedBox(height: 40,),
          GestureDetector(
            onTap: (){
              AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
            },
            child: Container(
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
                  "Sign up",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColor.homePageBackground,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          RichText(
            text: TextSpan(
              recognizer: TapGestureRecognizer()..onTap =() => Get.back(),
              text: "Already have an account?",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[500],
              ),
                children: [
                  TextSpan(
                    text: " Click here",
                    style: TextStyle(
                      color: AppColor.loopColor,
                      fontSize: 20
                    ),
                    recognizer: TapGestureRecognizer()..onTap =() => Get.back(),
                  )
                ]
            ),
          ),
          SizedBox(height: w * 0.1,),
          RichText(text: TextSpan(
              text: "Sig up by using another following method",
              style: TextStyle(
                color: AppColor.homePagePlanColor,
                fontSize: 16,
              ),
          )),
          Wrap(
            children: List<Widget>.generate(
              3,
                (index){
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 29,
                    backgroundColor: AppColor.homePagePlanColor,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        "img/"+images[index]
                      ),
                    ),
                  ),
                );
                }
            ),
          ),
        ],
      ),
    );
  }
}
