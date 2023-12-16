import 'package:firebase_app/core/constants/constants.dart';
import 'package:firebase_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final GlobalKey formKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(),
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF575DFB),
                ),
              ),
              Constants.verticalPadding,
              const Text(
                'Login now to track all your expenses and income at a place!',
                style: TextStyle(fontSize: 16),
              ),
              Constants.verticalPadding,
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Constants.verticalPadding,
                    const Text('Email'),
                    const SizedBox(height: 5),
                    InputField(
                      controller: emailController,
                      hintText: 'Ex: abc@example.com',
                      icon: Icons.apple,
                    ),
                    Constants.verticalPadding,
                    const Text('Your Password'),
                    const SizedBox(height: 5),
                    InputField(
                      controller: passwordController,
                      hintText: 'Ex: Saul Ramirez',
                      icon: Icons.person_outline,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Constants.primaryColor,
                    fontSize: 12,
                    decoration: TextDecoration.underline,
                    decorationColor: Constants.primaryColor,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 57,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, Routes.home, (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Constants.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Divider(
                height: 2,
                color: Colors.black,
              ),
              const SizedBox(height: 24),
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
                  mainAxisAlignment: MainAxisAlignment.center,
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
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don’t have an account?',
                    style: TextStyle(fontSize: 16),
                  ),
                  InkWell(
                    child: const Text(
                      ' Register',
                      style: TextStyle(
                        color: Constants.primaryColor,
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, Routes.signUp);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.icon,
  });

  final TextEditingController controller;
  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Constants.primaryColor,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0xFFC8C8C8)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Constants.primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Constants.primaryColor),
        ),
      ),
    );
  }
}
