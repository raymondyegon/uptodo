import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:uptodo/core/platform/platform.dart';
import 'package:uptodo/core/presentation/presentation.dart';
import 'package:uptodo/core/utilities/utilities.dart';
import 'package:uptodo/features/authentication/domain/models/signin_params.dart';
import 'package:uptodo/features/authentication/presentation/state/authentication_cubit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController usernameController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();

    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final sc = SizeConfig(context: context);

    return BlocListener<AuthenticationCubit, AuthenticationState>(
      listener: (_, state) => state.maybeWhen(
        orElse: () => {},
        error: (payload) => {
          logger.e(payload.error),
          EasyLoading.dismiss(),
          NotificationToast.buildNotification(
            context: context,
            description: payload.error,
            type: NotificationType.FAIL,
          ),
        },
        loggedIn: (payload) => {
          EasyLoading.dismiss(),
          context.go('/home'),
        },
        loggingIn: (payload) => EasyLoading.show(status: 'Logging in'),
      ),
      child: Form(
        key: _formKey,
        child: PageMargin(
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(height: 5.h),
              AutoSizeText(
                "Login",
                style: sc.h1Theme,
              ),
              SizedBox(height: 10.h),
              AppTextFieldWithTitle(
                hasTitle: true,
                title: 'Username',
                hintText: 'Enter you username',
                controller: usernameController,
                validator: (value) {
                  if (value == null || value == '') {
                    return "Username is required";
                  }

                  return null;
                },
              ),
              SizedBox(height: 3.h),
              AppTextFieldWithTitle(
                hasTitle: true,
                title: 'Password',
                obscured: true,
                hintText: '********',
                controller: passwordController,
                validator: (value) {
                  if (value == null || value == '') {
                    return "Password is required";
                  }

                  return null;
                },
              ),
              SizedBox(height: 7.h),
              AppButton(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    context.read<AuthenticationCubit>().signin(
                          params: SigninParams(
                            username: usernameController.text.trim(),
                            password: passwordController.text.trim(),
                          ),
                        );
                  }
                },
                label: 'Login',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
