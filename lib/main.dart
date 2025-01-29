import 'package:flutter/material.dart';
import 'package:pokedex/screens/auth_screen.dart';
import 'package:pokedex/screens/home_screen.dart';
import 'package:pokedex/screens/pokemon_info_screen.dart';
import 'package:pokedex/screens/profile_screen.dart';
import 'package:pokedex/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorsApp.primary),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        "/auth": (context) => AuthScreen(),
        "/pokemon": (context) => PokemonInfoScreen(),
        "/profile": (context) => ProfileScreen(),
      },
    );
  }
}
