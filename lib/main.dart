import 'package:bat_foundation/features/authentication/bloc/auth_bloc.dart';
import 'package:bat_foundation/features/authentication/data/repository/auth_repository.dart';
import 'package:bat_foundation/features/home/presentation/screens/home.dart';
import 'package:bat_foundation/router/app_router.dart';
import 'package:bat_foundation/utilities/injector.dart' as di;
import 'package:bat_foundation/utilities/local_session_manager/local_session_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'features/onboarding/screens/onboarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.dark,
  ));
  await LocalSessionManager().init();
  await di.init();
  LocalSessionManager localSessionManager = LocalSessionManager();
  final authStatus = localSessionManager.authStatus;
  runApp(MyApp(loggedIn: authStatus,));
}

class MyApp extends StatelessWidget {
  final bool? loggedIn;
  const MyApp({super.key, this.loggedIn});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return AuthBloc(AuthRepository());
          },
        ),
      ],
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus!.unfocus();
          }
        },
        child: GetMaterialApp(
          theme: ThemeData(textTheme: const TextTheme()),
          debugShowCheckedModeBanner: false,
          home: loggedIn == true ? const HomeScreen() : const OnboardingScreen(),
          // initialRoute: "/",
          onGenerateRoute: appRouter.onGenerateRoute,
        ),
      ),
    );
  }
}
