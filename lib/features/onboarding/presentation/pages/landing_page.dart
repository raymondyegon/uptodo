import 'package:uptodo/core/platform/platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:uptodo/core/presentation/presentation.dart';
import 'package:uptodo/features/authentication/presentation/state/authentication_cubit.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocListener<AuthenticationCubit, AuthenticationState>(
        listener: (_, state) => state.maybeWhen(
          orElse: () => {},
          error: (payload) => {
            context.go('/auth'),
          },
          loggedOut: (payload) => context.go('/auth'),
          loggedIn: (payload) {
            context.read<AuthenticationCubit>().fetchUser();
            return context.go('/home');
          },
          onboardRequired: (_) => context.go('/onboarding'),
        ),
        child: PageMargin(
          child: Center(
            child: CupertinoActivityIndicator(
              color: AppColors.primary,
              radius: 12.sp,
            ),
          ),
        ),
      );
}
