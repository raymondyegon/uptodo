import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uptodo/core/utilities/utilities.dart';
import 'package:uptodo/features/onboarding/presentation/pages/onboarding_page.dart';

part 'app_pages.dart';

class AppRoutes {
  /// use this in [MaterialApp.router]
  static final GoRouter _router = GoRouter(
    initialLocation: AppPages.onboarding,
    observers: [],
    // log diagnostic info for your routes
    debugLogDiagnostics: true,
    routes: [
      // GoRoute(
      //   path: AppPages.initial,
      //   builder: AppWidgets.landingWidget,
      // ),
      GoRoute(
        path: AppPages.onboarding,
        name: 'onboarding',
        builder: AppWidgets.onboardingWidget,
      ),
      // GoRoute(
      //   path: AppPages.auth,
      //   name: 'auth',
      //   // redirect: (context, state) => '/auth/login',
      //   builder: AppWidgets.loginWidget,
      //   routes: [
      //     GoRoute(
      //       path: AppPages.login,
      //       name: 'login',
      //       builder: AppWidgets.loginWidget,
      //     ),
      //     GoRoute(
      //       path: AppPages.signup,
      //       name: 'signup',
      //       builder: AppWidgets.signupWidget,
      //     ),
      //   ],
      // ),
      // GoRoute(
      //   path: AppPages.home,
      //   name: 'home-page',
      //   builder: AppWidgets.homeWidget,
      //   routes: [
      //     GoRoute(
      //       path: AppPages.kitchenDetails,
      //       name: 'kitchen-details',
      //       builder: AppWidgets.kitchenDetailsWidget,
      //     ),
      //     GoRoute(
      //       path: AppPages.mealDetails,
      //       name: 'meal-details',
      //       builder: AppWidgets.mealDetailsWidget,
      //     ),
      //     GoRoute(
      //       path: AppPages.orderSummary,
      //       name: 'order-summary',
      //       builder: AppWidgets.orderSummaryWidget,
      //     ),
      //     GoRoute(
      //       path: AppPages.orderDetails,
      //       name: 'order-details',
      //       builder: AppWidgets.orderDetailsWidget,
      //     ),
      //   ],
      // ),
    ],
    errorBuilder: (context, state) {
      logger.e(state.error.toString());

      logger.e(state.name);

      return Container(
        child: Center(
          child: Text('${state.error}'),
        ),
      );
    },
  );

  static GoRouter get router => _router;
}
