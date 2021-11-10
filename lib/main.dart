import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelling_dong/cubit/auth_cubit.dart';
import 'package:travelling_dong/cubit/destionation_cubit.dart';
import 'package:travelling_dong/cubit/page_cubit.dart';
import 'package:travelling_dong/cubit/seat_cubit.dart';
import 'package:travelling_dong/cubit/transaction_cubit.dart';
import 'package:travelling_dong/ui/pages/bonus_page.dart';
import 'package:travelling_dong/ui/pages/get_started_page.dart';
import 'package:travelling_dong/ui/pages/main_page.dart';
import 'package:travelling_dong/ui/pages/sign_in_page.dart';
import 'package:travelling_dong/ui/pages/sign_up_page.dart';
import 'package:travelling_dong/ui/pages/splash_page.dart';
import 'package:travelling_dong/ui/pages/success_checkout_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => DestionationCubit(),
        ),
        BlocProvider(
          create: (context) => SeatCubit(),
        ),
        BlocProvider(
          create: (context) => TransactionCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/get-started': (context) => const GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/sign-in': (context) => SignInPage(),
          '/bonus': (context) => const BonusPage(),
          '/main': (context) => const MainPage(),
          '/success': (context) => const SuccessCheckoutPage(),
        },
      ),
    );
  }
}
