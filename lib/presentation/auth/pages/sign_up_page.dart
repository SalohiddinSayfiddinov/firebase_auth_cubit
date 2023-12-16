import 'package:firebase_app/core/constants/constants.dart';
import 'package:firebase_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final GlobalKey formKey = GlobalKey();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
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
                'Register',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF575DFB),
                ),
              ),
              Constants.verticalPadding,
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Create an ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                    TextSpan(
                      text: 'account',
                      style: TextStyle(
                        color: Color(0xFF575DFB),
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    TextSpan(
                      text: ' to access all the features of ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                    TextSpan(
                      text: 'Maxpense!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
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
                    const Text('Your Name'),
                    const SizedBox(height: 5),
                    InputField(
                      controller: nameController,
                      hintText: 'Ex: Saul Ramirez',
                      icon: Icons.person_outline,
                    ),
                    Constants.verticalPadding,
                    const Text('Your Password'),
                    const SizedBox(height: 5),
                    InputField(
                      controller: passwordController,
                      hintText: '******',
                      icon: Icons.lock_outline,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 70),
              SizedBox(
                height: 57,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.emailVerification);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Constants.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
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
                      Navigator.pushReplacementNamed(context, Routes.login);
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
