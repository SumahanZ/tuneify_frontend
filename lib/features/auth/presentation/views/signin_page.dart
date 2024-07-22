import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/theme/app_pallete.dart';
import 'package:tuneify/core/utils/utils.dart';
import 'package:tuneify/features/auth/presentation/providers/auth_notifier.dart';
import 'package:tuneify/features/auth/presentation/providers/auth_state.dart';
import 'package:tuneify/features/auth/presentation/views/signup_page.dart';
import 'package:tuneify/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:tuneify/core/widgets/custom_textfield.dart';
import 'package:tuneify/features/song/presentation/views/home_page.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);
    ref.listen(authNotifierProvider, (previous, next) {
      switch (next) {
        case AuthFailure(failure: var failure):
          showSnackbar(text: failure.message, context: context);
        case AuthLoginUserSuccess():
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
            (route) => false,
          );
        default:
          break;
      }
    });

    return switch (authState) {
      AuthLoading() => const Center(child: CircularProgressIndicator()),
      _ => Scaffold(
          appBar: AppBar(
            title: const Text("Login Page"),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Sign In",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  CustomTextField(
                    hintText: "Email",
                    controller: _emailController,
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    hintText: "Password",
                    controller: _passwordController,
                    isObscure: true,
                  ),
                  const SizedBox(height: 20),
                  AuthGradientButton(
                    text: 'Sign In',
                    onPressed: () {
                      ref.read(authNotifierProvider.notifier).login(
                            email: _emailController.text,
                            password: _passwordController.text,
                          );
                    },
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const SignupPage(),
                                ),
                              );
                            },
                          text: "Sign Up",
                          style: const TextStyle(
                            color: Pallete.gradient2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    };
  }
}
