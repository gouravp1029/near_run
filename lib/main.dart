// main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'providers/run_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RunProvider()),
      ],
      child: MaterialApp(
        title: 'NearRun',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: const Color(0xFF0A0E21),
          primaryColor: const Color(0xFF4C6EF5),
          colorScheme: ColorScheme.dark(
            primary: const Color(0xFF4C6EF5),
            secondary: const Color(0xFF7C3AED),
            surface: const Color(0xFF1A1F3A),
          ),
          fontFamily: 'SF Pro Display',
          textTheme: const TextTheme(
            headlineLarge: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            headlineMedium: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            bodyLarge: TextStyle(
              fontSize: 16,
              color: Colors.white70,
            ),
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}

// providers/run_provider.dart


// screens/home_screen.dart


// screens/start_run_screen.dart


// screens/running_screen.dart

// screens/history_screen.dart


// screens/profile_screen.dart
