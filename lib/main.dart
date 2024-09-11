import 'package:e_commerce_app_flutter/views/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.mulishTextTheme(),
      ),
      title: 'E-Commerce App',
      home: const BottomNavBar(),
    );
  }
}
