import 'package:flutter/material.dart';
import 'package:tuneify/core/theme/theme.dart';
import 'package:tuneify/features/auth/presentation/views/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tuneify',
      theme: AppTheme.darkThemeMode,
      home: const SignupPage(),
    );
  }
}
