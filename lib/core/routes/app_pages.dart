import 'package:firebase_app/presentation/auth/pages/email_verification_page.dart';
import 'package:firebase_app/presentation/auth/pages/login_page.dart';
import 'package:firebase_app/presentation/auth/pages/sign_up_page.dart';
import 'package:firebase_app/presentation/auth/pages/welcome_page.dart';
import 'package:firebase_app/presentation/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'app_routes.dart';

abstract class AppPages {
  AppPages._();

  static Map<String, WidgetBuilder> routes = {
    Routes.welcome: (_) => const WelcomePage(),
    Routes.signUp: (_) => SignUpPage(),
    Routes.home: (_) => const HomePage(),
    Routes.emailVerification: (_) => EmailVerificationPage(),
    Routes.login: (_) => LoginPage(),
  };
}
