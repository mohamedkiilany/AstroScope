import 'package:astroscope/database/db.dart';
import 'package:astroscope/models/planets.dart';
import 'package:astroscope/screens/home_screen.dart';
import 'package:astroscope/screens/splash_screen.dart';
import 'package:astroscope/state/favorites_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Db.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Planet> initialFavorites;

  const MyApp({super.key, this.initialFavorites = const []});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoritesCubit(),
      child: MaterialApp(
        routes: {
          '/': (context) => const SplashScreen(),
          '/home': (context) => const HomeScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: const SplashScreen());
  // }
}
