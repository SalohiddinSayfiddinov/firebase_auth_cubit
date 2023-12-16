import 'package:firebase_app/core/constants/constants.dart';
import 'package:firebase_app/core/routes/app_routes.dart';

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome to',
                style: TextStyle(fontSize: 24),
              ),
              const Text(
                'MaxPense',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF575DFB),
                ),
              ),
              const Text(
                'A place where you can track all your expenses and incomes...',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              const Text(
                'Let’s Get Started...',
                style: TextStyle(fontSize: 16),
              ),
              Constants.verticalPadding,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  backgroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: const BorderSide(color: Colors.black),
                  ),
                ),
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(
                      Icons.apple,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      'Continue with google',
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  backgroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: const BorderSide(color: Colors.black),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Routes.signUp);
                },
                child: const Row(
                  children: [
                    Text(
                      'Continue with email',
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                    SizedBox(width: 5.0),
                    Icon(
                      Icons.email,
                      color: Constants.primaryColor,
                    ),
                  ],
                ),
              ),
              Constants.verticalPadding,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(fontSize: 16),
                  ),
                  InkWell(
                    child: const Text(
                      ' Login',
                      style: TextStyle(
                        color: Constants.primaryColor,
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, Routes.login);
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
