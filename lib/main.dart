import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/res/constants.dart';
import 'package:portfolio_app/view/splash/splash_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'view model/theme_controller.dart';

final themeController = Get.put(ThemeController());

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeController.themeMode.value,

          // 🌞 Light Theme
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            useMaterial3: true,
            colorScheme: const ColorScheme.light(
              primary: Colors.blue,
              secondary: Colors.pink,
              surface: Colors.white,
              background: Colors.white,
              onPrimary: Colors.white,
              onSecondary: Colors.white,
              onSurface: Colors.black,
              onBackground: Colors.black,
              brightness: Brightness.light,
            ),
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black),
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            textTheme: GoogleFonts.openSansTextTheme()
                .apply(bodyColor: Colors.black)
                .copyWith(
                  bodyLarge: const TextStyle(color: Colors.black),
                  bodyMedium: const TextStyle(color: Colors.black87),
                ),
            iconTheme: const IconThemeData(color: Colors.black87),
          ),

          // 🌙 Dark Theme
          darkTheme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: const Color(0xFF121212),
            colorScheme: const ColorScheme.dark(
              primary: Colors.deepPurple,
              secondary: Colors.pinkAccent,
              surface: Color(0xFF1E1E1E),
              background: Color(0xFF121212),
              onPrimary: Colors.white,
              onSecondary: Colors.white,
              onSurface: Colors.white,
              onBackground: Colors.white,
              brightness: Brightness.dark,
            ),
            textTheme: GoogleFonts.openSansTextTheme()
                .apply(bodyColor: Colors.white)
                .copyWith(
                  headlineLarge: const TextStyle(color: Colors.white),
                  headlineMedium: const TextStyle(color: Colors.black),


                  bodyLarge: const TextStyle(color: Colors.white),
                  bodyMedium: const TextStyle(color: Colors.white70),
                ),
            iconTheme: const IconThemeData(color: Colors.white),
          ),

          home: SplashView(),
        ));
  }
}
