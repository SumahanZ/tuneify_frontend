import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuneify/core/enums/get_data_enum.dart';
import 'package:tuneify/core/failure/failure.dart';
import 'package:tuneify/core/providers/current_user_provider.dart';
import 'package:tuneify/features/auth/domain/usecases/auth_get_data.dart';
import 'package:tuneify/features/auth/domain/usecases/auth_login.dart';
import 'package:tuneify/features/auth/domain/usecases/auth_signup.dart';
import 'package:tuneify/features/auth/presentation/providers/auth_state.dart';
part 'auth_notifier.g.dart';

final authUseCaseProvider = Provider(
  (ref) => AuthUseCases(
    authLogin: ref.watch(authLoginProvider),
    authSignUp: ref.watch(authSignUpProvider),
    authGetData: ref.watch(authGetDataProvider),
  ),
);

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() {
    getData();
    return const AuthState.initial();
  }

  void signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    state = const AuthState.loading();
    final result = await ref.read(authUseCaseProvider).authSignUp(
          AuthSignUpParams(name: name, email: email, password: password),
        );

    result.fold(
      (l) => state = AuthState.failure(l),
      (r) => state = const AuthState.createUserSuccess("Success signing up!"),
    );
  }

  void login({
    required String email,
    required String password,
  }) async {
    state = const AuthState.loading();
    final result = await ref.read(authUseCaseProvider).authLogin(
          AuthLoginParams(email: email, password: password),
        );

    result.fold((l) {
      state = AuthState.failure(l);
    }, (r) async {
      await Future.delayed(const Duration(seconds: 1));
      state = const AuthState.loginUserSuccess();
      ref.read(currentUserProvider.notifier).update((state) => r);
    });
  }

  void getData() async {
    final result = await ref.read(authUseCaseProvider).authGetData();

    result.fold(
      (l) {
        if (l is ServerFailure) {
          return state = const AuthState.getDataSuccess(GetData.notLoggedIn);
        }

        state = AuthState.failure(l);
      },
      (r) {
        state = const AuthState.getDataSuccess(GetData.loggedIn);
        ref.read(currentUserProvider.notifier).update((state) => r);
      },
    );
  }
}

class AuthUseCases {
  final AuthLoginUseCase authLogin;
  final AuthSignUpUseCase authSignUp;
  final AuthGetDataUseCase authGetData;

  AuthUseCases({
    required this.authLogin,
    required this.authSignUp,
    required this.authGetData,
  });
}
