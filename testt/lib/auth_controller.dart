import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testt/login_page.dart';
import 'package:testt/welcome_page.dart';

class AuthController extends GetxController {
  // AuthenController
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady(){
    super.onReady();
   _user = Rx<User?>(auth.currentUser);
   _user.bindStream(auth.userChanges());
   ever(_user, _initialScreen);
  }

  _initialScreen(User? user){
    if(user == null){              // if it has not a user log in
      print("Login please");
      Get.offAll(() => LoginPage()); // move user to Login page
   }else{
      Get.offAll(() => WelcomePage());
    }
  }

  void register(String email, password){
    try{
      auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About user", "User message",
      backgroundColor: Colors.redAccent,
      snackPosition: SnackPosition.BOTTOM,
        titleText: Text("Account creation failed",
        style: TextStyle(
            color: Colors.white
          ),
        ),
        messageText: Text(
          e.toString(),
          style: TextStyle(
              color: Colors.white
          ),
        )
      );
    }
  }
}