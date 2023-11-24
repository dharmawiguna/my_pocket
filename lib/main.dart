import "package:flutter/material.dart";
import 'package:my_pocket/shared/theme.dart';
import 'package:my_pocket/ui/pages/home_page.dart';
import 'package:my_pocket/ui/pages/onBoardingPage.dart';
import 'package:my_pocket/ui/pages/pin_page.dart';
import 'package:my_pocket/ui/pages/profile_edit.dart';
import 'package:my_pocket/ui/pages/profile_page.dart';
import 'package:my_pocket/ui/pages/sign_in_page.dart';
import 'package:my_pocket/ui/pages/sign_up_id_page.dart';
import 'package:my_pocket/ui/pages/sign_up_page.dart';
import 'package:my_pocket/ui/pages/sign_up_profile_page.dart';
import 'package:my_pocket/ui/pages/sign_up_success_page.dart';
import 'package:my_pocket/ui/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //menghilangkan banner debug di simulator
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: lightBackgroundColor,
          appBarTheme: AppBarTheme(
            backgroundColor: lightBackgroundColor,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(color: blackColor),
            titleTextStyle: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          )),

      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnBoardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-set-profile': (context) => const SignUpSetProfilePage(),
        '/sign-up-set-id': (context) => const SignUpSetIdPage(),
        '/sign-up-success': (context) => const SignUpSuccessPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/pin': (context) => const PinPage(),
        '/profile-edit': (context) => const ProfileEditPage(),
      },
    );
  }
}
