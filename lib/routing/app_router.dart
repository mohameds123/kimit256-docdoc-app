import 'package:flutter/material.dart';
import 'package:kimit256docdoc/features/home/presentation/screens/home_screen.dart';
import 'package:kimit256docdoc/features/login/presentation/screens/login_screen.dart';
import 'package:kimit256docdoc/features/sign_up/presentation/screens/signup_screen.dart';
import 'package:kimit256docdoc/features/splash/presentation/splash_screen.dart';
import 'package:kimit256docdoc/routing/routes.dart';
import '../features/onboarding/presentation/screens/onboarding_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case Routes.login:
        return MaterialPageRoute(builder: (_) =>  LoginScreen());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) =>  SignUpScreen());
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: const Text('Route Not Found'),
            ),
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
        );
    }
  }
}
