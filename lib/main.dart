import "package:flutter/material.dart";
import 'package:my_pocket/blocs/auth/auth_bloc.dart';
import 'package:my_pocket/blocs/user/user_bloc.dart';
import 'package:my_pocket/shared/theme.dart';
import 'package:my_pocket/ui/pages/data_package_page.dart';
import 'package:my_pocket/ui/pages/data_provider_page.dart';
import 'package:my_pocket/ui/pages/data_success_page.dart';
import 'package:my_pocket/ui/pages/home_page.dart';
import 'package:my_pocket/ui/pages/onBoardingPage.dart';
import 'package:my_pocket/ui/pages/pin_page.dart';
import 'package:my_pocket/ui/pages/profile_edit_page.dart';
import 'package:my_pocket/ui/pages/profile_edit_pin_page.dart';
import 'package:my_pocket/ui/pages/profile_edit_success_page.dart';
import 'package:my_pocket/ui/pages/profile_page.dart';
import 'package:my_pocket/ui/pages/sign_in_page.dart';
import 'package:my_pocket/ui/pages/sign_up_page.dart';
import 'package:my_pocket/ui/pages/sign_up_success_page.dart';
import 'package:my_pocket/ui/pages/splash_page.dart';
import 'package:my_pocket/ui/pages/topup_page.dart';
import 'package:my_pocket/ui/pages/topup_success.dart';
import 'package:my_pocket/ui/pages/transfer_page.dart';
import 'package:my_pocket/ui/pages/transfer_success.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc()
            ..add(
              AuthGetCurrentUser(),
            ),
        ),
        BlocProvider(
          create: (context) => UserBloc(),
        ),
      ],
      child: MaterialApp(
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
          '/sign-up-success': (context) => const SignUpSuccessPage(),
          '/home': (context) => const HomePage(),
          '/profile': (context) => const ProfilePage(),
          '/pin': (context) => const PinPage(),
          '/profile-edit': (context) => const ProfileEditPage(),
          '/profile-edit-pin': (context) => const ProfileEditPin(),
          '/profile-edit-success': (context) => const ProfileEditSuccessPage(),
          '/topup': (context) => const TopUpPage(),
          '/topup-success': (context) => const TopupSuccessPage(),
          '/transfer': (context) => const TransferPage(),
          '/transfer-success': (context) => const TransferSuccessPage(),
          '/data-provider': (context) => const DataProviderPage(),
          '/data-package': (context) => const DataPackagePage(),
          '/data-package-success': (context) => const DataPackageSuccessPage(),
        },
      ),
    );
  }
}
