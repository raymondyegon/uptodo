import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uptodo/core/utilities/utilities.dart';
import 'package:uptodo/features/authentication/presentation/pages/login_page.dart';
import 'package:uptodo/features/home/data/models/todo_model.dart';
import 'package:uptodo/features/home/presentation/pages/home_page.dart';
import 'package:uptodo/features/home/presentation/pages/todo_detail_page.dart';
import 'package:uptodo/features/onboarding/presentation/pages/landing_page.dart';
import 'package:uptodo/features/onboarding/presentation/pages/onboarding_page.dart';

part 'app_pages.dart';

class AppRoutes {
  /// use this in [MaterialApp.router]
  static final GoRouter _router = GoRouter(
    initialLocation: AppPages.initial,
    observers: [],
    // log diagnostic info for your routes
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: AppPages.initial,
        builder: AppWidgets.landingWidget,
      ),
      GoRoute(
        path: AppPages.onboarding,
        name: 'onboarding',
        builder: AppWidgets.onboardingWidget,
      ),
      GoRoute(
        path: AppPages.auth,
        name: 'auth',
        builder: AppWidgets.loginWidget,
      ),
      GoRoute(
        path: AppPages.home,
        name: 'home-page',
        builder: AppWidgets.homePageWidget,
        routes: [
          GoRoute(
            path: AppPages.todoDetail,
            name: 'todo-detail',
            builder: AppWidgets.todoDetailsWidget,
          ),
        ],
      ),
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
