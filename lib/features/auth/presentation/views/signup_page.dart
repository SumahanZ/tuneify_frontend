import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/theme/app_pallete.dart';
import 'package:tuneify/core/utils/utils.dart';
import 'package:tuneify/features/auth/presentation/providers/auth_notifier.dart';
import 'package:tuneify/features/auth/presentation/providers/auth_state.dart';
import 'package:tuneify/features/auth/presentation/views/signin_page.dart';
import 'package:tuneify/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:tuneify/features/auth/presentation/widgets/custom_textfield.dart';

class SignupPage extends ConsumerStatefulWidget {
  const SignupPage({super.key});

  @override
  ConsumerState<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends ConsumerState<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);

    ref.listen(authNotifierProvider, (previous, next) {
      switch (next) {
        case CreateUserSuccess(message: var message):
          showSnackbar(text: message, context: context);
        case Failure(failure: var failure):
          showSnackbar(text: failure.message, context: context);
        default:
          break;
      }
    });

    return switch (authState) {
      Loading() => const Center(child: CircularProgressIndicator()),
      _ => Scaffold(
          appBar: AppBar(
            title: const Text("SignUp Page"),
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
                    "Sign Up",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  CustomTextField(
                    hintText: "Name",
                    controller: _nameController,
                  ),
                  const SizedBox(height: 15),
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
                    text: "Sign Up",
                    onPressed: () {
                      ref.read(authNotifierProvider.notifier).signUp(
                            name: _nameController.text,
                            email: _emailController.text,
                            password: _passwordController.text,
                          );
                    },
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text: "Already have an account? ",
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => const LoginPage(),
                                ),
                              );
                            },
                          text: "Sign In",
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
        ),
    };
  }
}
