import 'package:flutter/material.dart';
import 'package:food_app/Imports.dart';
import 'package:food_app/auth_class/auth_class.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  AuthClass _auth = AuthClass();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image/homme2.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: <Color>[
                Colors.white.withOpacity(0.5),
                Colors.black87.withOpacity(0.1),
                Color(0xff191B2F),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
          ),
          Container(
            padding: EdgeInsets.only(top: 150, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome to',
                    style: GoogleFonts.prompt(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        shadows: <BoxShadow>[
                          BoxShadow(color: Colors.white, offset: Offset(2, 2))
                        ])),
                Text('FoodExpress',
                    style: GoogleFonts.prompt(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                        shadows: <BoxShadow>[
                          BoxShadow(color: Colors.black, offset: Offset(2, 2))
                        ])),
                Gap(30),
                Text(
                  '                  Your favourite foods delivered',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text('                     fast at your door',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                Gap(200),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.white,
                        thickness: 0.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'sign in with  ',
                        style: mystyle(
                          15,
                          Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.white,
                        thickness: 0.5,
                      ),
                    ),
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () async {},
                            child: Container(
                              margin: EdgeInsets.only(top: 6),
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/image/facebook.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Text(
                            'FACEBOOK  ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () async {
                              _auth.signInWithGoogle();
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 6),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/image/google.jpg'),
                                      fit: BoxFit.contain)),
                            ),
                          ),
                          Text('GOOGLE  ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.offAllNamed('/register');
                      },
                      child: Text(
                        'Start with email',
                        style: mystyle(20, Colors.white),
                      ),
                    ),
                    Text(
                      'or',
                      style: mystyle(20, Colors.white),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.offAllNamed('/phone');
                      },
                      child: Text(
                        'phone',
                        style: mystyle(20, Colors.white),
                      ),
                    )
                  ],
                ),
                Gap(10),
                InkWell(
                  onTap: () {
                    Get.offAllNamed('/login');
                  },
                  child: Center(
                      child: Text(
                    'Already have an account? sign in',
                    style: mystyle(15, Colors.white),
                  )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
