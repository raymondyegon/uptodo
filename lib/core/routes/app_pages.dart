part of 'app_routes.dart';

class AppPages {
  // all the route paths. So that we can access them easily  across the app
  static const initial = '/';

  static const onboarding = '/onboarding';

  // Authentication
  static String auth = '/auth';
  static const login = 'login';

  // Home page
  static const home = '/home';
  static const todoDetail = 'todo-detail';
}

// Builder route widgets for different routes
class AppWidgets {
  // Initial App Route
  static Widget landingWidget(BuildContext context, GoRouterState state) =>
      const LandingPage();

  // Onboarding widget
  static Widget onboardingWidget(BuildContext context, GoRouterState state) =>
      const OnboardingPage();

// Login Widget
  static Widget loginWidget(BuildContext context, GoRouterState state) =>
      const LoginPage();

  // HomePage Widget
  static Widget homePageWidget(BuildContext context, GoRouterState state) =>
      const HomePage();

  // To-do Details Screeen
  static Widget todoDetailsWidget(BuildContext context, GoRouterState state) =>
      TodoDetailPage(todo: state.extra as TodoModel);
}
