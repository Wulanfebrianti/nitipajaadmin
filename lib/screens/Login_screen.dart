import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
// import 'package:nitip/settings/profile/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../config/palette.dart';
import '../controller/login_getx.dart';
import '../navbar/Sidebar_menu.dart';
import 'Sidebar.dart';
// import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailmskController = TextEditingController();
  final _passwordmskController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _emailmskController.dispose();
    _passwordmskController.dispose();
  }
  // Future signIn() async{
  //   if (passwordConfirmed()) {
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim()
  //   );
  //   }
  // }
  // bool passwordConfirmed() {
  //   if (_passwordController.text.trim() == _passwordConfirmController.text.trim()) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Image.asset('assets/images/shopper.png', height: 130,),
                SizedBox(height: 30),
                Text(
                  'Masuk',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 35),
                Container(
                  height: 475,
                  width: 440,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        controller: _emailmskController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Palette.activeColor),
                            borderRadius: BorderRadius.circular(50),
                          ), 
                          hintText: 'Email',
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(Icons.email, color: Colors.grey,),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: _passwordmskController,
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Palette.activeColor),
                            borderRadius: BorderRadius.circular(50),
                          ), 
                          hintText: 'Password',
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(Icons.lock, color: Colors.grey,),
                        ),
                      ),
                      SizedBox(height: 50),
                      Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Palette.activeColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: TextButton(
                          onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SidebarPage()), 
                              );
                          },
                          child: Center(
                            child: Text(
                              'Masuk',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ]),
          ),
        ),
    );
  }
}

