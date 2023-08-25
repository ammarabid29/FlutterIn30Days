import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int days = 30;
    const String name = "Codepur";

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catalog App",
        ),
      ),
      body: Center(
          child: Container(
        constraints: const BoxConstraints(
          minHeight: 70,
          maxHeight: 200,
          minWidth: 70,
          maxWidth: 200,
        ),
        child: Container(
          color: Colors.red,
          height: 200,
          width: 100,
        ),
      )
          // Text(
          //   'Welcome to $days days of flutter by $name',
          // ),

          ),
      drawer: const MyDrawer(),
    );
  }
}
