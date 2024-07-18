import 'package:flutter/material.dart';
import 'package:tuneify/features/auth/presentation/widgets/custom_textfield.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign Up",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            CustomTextField(hintText: "Name"),
            SizedBox(height: 15),
            CustomTextField(hintText: "Email"),
            SizedBox(height: 15),
            CustomTextField(hintText: "Password"),
          ],
        ),
      ),
    );
  }
}
