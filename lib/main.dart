import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app/firebase_opt.dart';
import 'package:food_app/manage_state/binding_class.dart';
import 'package:food_app/pages/Splash.dart';
import 'package:food_app/pages/buttom.dart';
import 'package:food_app/pages/cart.dart';
import 'package:food_app/pages/feature_detai;s.dart';
import 'package:food_app/pages/orders.dart';
import 'package:food_app/pages/phone_page.dart';
import 'package:food_app/pages/rating_page.dart';
import 'package:food_app/pages/signup_page/landing.dart';
import 'package:food_app/pages/signup_page/login.dart';
import 'package:food_app/pages/signup_page/otp.dart';
import 'package:food_app/pages/signup_page/register.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        initialRoute: '/splash',
        getPages: [
          GetPage(name: '/splash', page: () => Splash()),
          GetPage(
            name: '/signup',
            page: () => signup(),
            binding: BindingClass(),
          ),
          GetPage(name: '/otp', page: () => Otp()),
          GetPage(name: '/register', page: () => register()),
          GetPage(name: '/login', page: () => login()),
          GetPage(name: '/phone', page: () => phone()),
          GetPage(
            name: '/buttom',
            page: () => buttom(),
            binding: BindingClass(),
          ),
          GetPage(
            name: '/detail_food',
            page: () => DetailFood(
              addModel: Get.arguments,
              hotelclass: Get.arguments,
            ),
            binding: BindingClass(),
          ),
          GetPage(name: '/cart', page: () => cart()),
          GetPage(name: '/rating', page: () => rating()),
          GetPage(name: '/order', page: () => orders())
        ],
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
