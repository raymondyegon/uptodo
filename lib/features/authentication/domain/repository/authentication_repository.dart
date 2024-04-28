import 'package:uptodo/features/authentication/data/models/user_model.dart';

abstract class AuthenticationRepository {
  Future<void> refreshToken();

  Future<void> fetchUser();

  Future<UserModel?> signInWithUsername({
    required String username,
    required String password,
  });

  Future<void> logout();

  Future<UserModel?> checkLogin();
}
