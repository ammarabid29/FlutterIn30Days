import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/themes.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/home_page.dart';

void main() {
  runApp(
    VxState(
      store: MyStore(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const HomePage(),
      themeMode: ThemeMode.system,

      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,

      initialRoute: MyRoutes.homePage,

      routes: {
        '/': (context) => const LoginPage(),
        MyRoutes.homePage: (context) => const HomePage(),
        MyRoutes.loginPage: (context) => const LoginPage(),
        MyRoutes.cartPageRoute: (context) => const CartPage(),
      },
    );
  }
}
