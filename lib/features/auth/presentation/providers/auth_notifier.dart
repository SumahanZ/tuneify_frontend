import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuneify/features/auth/domain/usecases/auth_login.dart';
import 'package:tuneify/features/auth/domain/usecases/auth_signup.dart';
import 'package:tuneify/features/auth/presentation/providers/auth_state.dart';
part 'auth_notifier.g.dart';

final authUseCaseProvider = Provider(
  (ref) => AuthUseCases(
    authLogin: ref.watch(authLoginProvider),
    authSignUp: ref.watch(authSignUpProvider),
  ),
);

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() {
    return const AuthState.initial();
  }

  void signUp() {}
}

class AuthUseCases {
  final AuthLoginUseCase authLogin;
  final AuthSignUpUseCase authSignUp;

  AuthUseCases({
    required this.authLogin,
    required this.authSignUp,
  });
}
