import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning/core/presentation/app_router.gr.dart';
import 'package:learning/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRoute();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 239, 227, 200),
              foregroundColor: Colors.black),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromARGB(255, 34, 21, 31),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 239, 227, 200),
          ),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 32, 21, 32),
          secondaryContainer: const Color.fromARGB(255, 23, 16, 23),
          secondary: const Color.fromARGB(25, 255, 255, 255),
          onSecondary: const Color.fromARGB(128, 65, 65, 65),
          onSecondaryContainer: const Color.fromARGB(20, 255, 255, 255),
          tertiary: const Color.fromARGB(76, 112, 67, 65),
          onTertiary: const Color.fromARGB(56, 239, 227, 200),
          onTertiaryContainer: const Color.fromARGB(255, 56, 35, 42),
        ),
        cardTheme: const CardTheme(
          color: Color.fromARGB(255, 201, 76, 76),
        ),
        iconTheme: const IconThemeData.fallback().copyWith(
          color: const Color.fromARGB(128, 239, 227, 200),
        ),
        chipTheme: const ChipThemeData(
          backgroundColor: Color.fromARGB(255, 32, 21, 32),
          selectedColor: Color.fromARGB(255, 239, 227, 200),
        ),
        textTheme: TextTheme(
          headlineLarge: GoogleFonts.rosarivo(
            height: 0.8,
            fontSize: 48,
            fontWeight: FontWeight.w400,
            color: const Color.fromARGB(255, 239, 227, 200),
          ),
          headlineMedium: GoogleFonts.rosarivo(
            height: 1.5,
            fontSize: 36,
            fontWeight: FontWeight.w400,
            color: const Color.fromARGB(128, 239, 227, 200),
          ),
          displayMedium: GoogleFonts.rosarivo(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: const Color.fromARGB(128, 239, 227, 200),
          ),
          displayLarge: GoogleFonts.rosarivo(
            fontSize: 16,
            height: 1.25,
            fontWeight: FontWeight.w400,
            color: const Color.fromARGB(255, 239, 227, 200),
          ),
          labelSmall: GoogleFonts.rosarivo(
            fontSize: 14,
            height: 1.75,
            fontWeight: FontWeight.w400,
            color: const Color.fromARGB(255, 239, 227, 200),
          ),
          titleSmall: GoogleFonts.rosarivo(
            fontSize: 14,
            height: 1.75,
            fontWeight: FontWeight.w400,
            color: const Color.fromARGB(255, 32, 21, 32),
          ),
          displaySmall: GoogleFonts.rosarivo(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            height: 0.6,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          labelMedium: GoogleFonts.rosarivo(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          labelLarge: GoogleFonts.openSans(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          titleLarge: GoogleFonts.notoSans(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          titleMedium: GoogleFonts.rosarivo(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
