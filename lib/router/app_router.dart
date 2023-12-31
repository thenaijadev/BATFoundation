import 'package:bat_foundation/features/authentication/presentation/Screens/change_password_screen.dart';
import 'package:bat_foundation/features/authentication/presentation/Screens/email_sent_screen.dart';
import 'package:bat_foundation/features/authentication/presentation/Screens/login_screen.dart';
import 'package:bat_foundation/features/authentication/presentation/Screens/profile_details_screen.dart';
import 'package:bat_foundation/features/authentication/presentation/Screens/registration_screen.dart';
import 'package:bat_foundation/features/home/presentation/screens/contact_us.dart';
import 'package:bat_foundation/features/home/presentation/screens/event_details.dart';
import 'package:bat_foundation/features/home/presentation/screens/home.dart';
import 'package:bat_foundation/features/home/presentation/screens/media_center_details.dart';
import 'package:bat_foundation/features/home/presentation/screens/menu.dart';
import 'package:bat_foundation/features/home/presentation/screens/project_details.dart';
import 'package:bat_foundation/features/onboarding/screens/onboarding_screen.dart';
import 'package:bat_foundation/router/routes.dart';
import 'package:bat_foundation/universal.dart/error_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    // logger.i("This is the route: ${routeSettings.name}");
    switch (routeSettings.name) {
      case Routes.landing:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.emailSent:
        var message = routeSettings.arguments as String;

        return MaterialPageRoute(
          builder: (_) => EmailSentScreen(message: message),
        );

      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.register:
        return MaterialPageRoute(
          builder: (_) => const RegistrationScreen(),
        );

      case Routes.profile:
        var data = routeSettings.arguments as Map<String, String>;
        return MaterialPageRoute(
          builder: (_) => ProfileDetailsScreen(
            data: data,
          ),
        );

      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.contactUs:
        return MaterialPageRoute(
          builder: (_) => const ContactUsScreen(),
        );

      case Routes.mediaItemsCenterDetails:
        return MaterialPageRoute(
          builder: (_) => const MediaCenterDetails(),
        );

      case Routes.eventDetails:
        return MaterialPageRoute(
          builder: (_) => const EventDetails(),
        );
      case Routes.projectDetails:
        return MaterialPageRoute(
          builder: (_) => const ProjectDetails(),
        );

      case Routes.menu:
        return MaterialPageRoute(
          builder: (_) => const MenuScreen(),
        );
      case Routes.forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const ChangePassword(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorScreen(),
        );
    }
  }
}
