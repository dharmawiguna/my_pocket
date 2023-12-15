import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_pocket/blocs/auth/auth_bloc.dart';
import 'package:my_pocket/shared/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/home', (route) => false);
          }

          if (state is AuthFailed) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/onboarding', (route) => false);
          }
        },
        child: Center(
          child: Container(
            width: 50,
            height: 155,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/my_pocket_logo.png',
              ),
            )),
          ),
        ),
      ),
    );
  }
}

// class SplashPage extends StatefulWidget {
//   const SplashPage({super.key});

//   @override
//   State<SplashPage> createState() => _SplashPageState();
// }

// class _SplashPageState extends State<SplashPage> {
//   @override
//   // initState() adalah function yang dijalankan pertama kali ketika SplashPage di panggil
//   void initState() {
//     super.initState();

//     Timer(const Duration(seconds: 2), () {
//       Navigator.pushNamedAndRemoveUntil(
//           context, "/onboarding", (route) => false);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: darkBackgroundColor,
//       body: Center(
//         child: Container(
//           width: 50,
//           height: 155,
//           decoration: const BoxDecoration(
//               image: DecorationImage(
//             image: AssetImage(
//               'assets/my_pocket_logo.png',
//             ),
//           )),
//         ),
//       ),
//     );
//   }
// }


