import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';

import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: MyRoutes.homePage,
      routes: {
        '/': (context) => const LoginPage(),
        MyRoutes.homePage: (context) => const HomePage(),
        MyRoutes.loginPage: (context) => const LoginPage(),
      },
    );
  }
}
