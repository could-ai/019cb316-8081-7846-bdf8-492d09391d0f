import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/add_service_screen.dart';

void main() {
  runApp(const GlamUpApp());
}

class GlamUpApp extends StatelessWidget {
  const GlamUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GlamUp Studio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE91E63), // Pink color for Beauty Parlour
          secondary: const Color(0xFFD81B60),
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xFFE91E63),
          foregroundColor: Colors.white,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          fillColor: Colors.grey.shade50,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/add_service': (context) => const AddServiceScreen(),
      },
    );
  }
}
