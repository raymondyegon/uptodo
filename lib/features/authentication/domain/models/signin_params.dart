class SigninParams {
  final String username;
  final String password;

  SigninParams({required this.username, required this.password});

  @override
  String toString() => 'SigninParams(username: $username, password: $password)';

  SigninParams copyWith({
    String? username,
    String? password,
  }) =>
      SigninParams(
        username: username ?? this.username,
        password: password ?? this.password,
      );
}
