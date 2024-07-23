import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/enums/get_data_enum.dart';
import 'package:tuneify/features/auth/presentation/providers/auth_notifier.dart';
import 'package:tuneify/features/auth/presentation/providers/auth_state.dart';
import 'package:tuneify/features/auth/presentation/views/signin_page.dart';
import 'package:tuneify/features/song/presentation/views/home_page.dart';

class WrapperPage extends ConsumerWidget {
  const WrapperPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authNotifierProvider, (previous, next) {
      switch (next) {
        case AuthGetDataSuccess(getData: final getData):
          if (getData == GetData.loggedIn) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            });
          }

        default:
          break;
      }
    });

    final authState = ref.watch(authNotifierProvider);

    return Scaffold(
      body: switch (authState) { _ => const LoginPage() },
    );
  }
}
