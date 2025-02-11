import 'package:flutter/material.dart';
import 'package:flutter_days/pages/home_page.dart';
import 'package:flutter_days/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: GoogleFonts.lato().fontFamily
      ),
      home: const LoginPage(),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark
      // ),
      initialRoute: "/home",
      routes: {
        "/login": (context) => const LoginPage(),
        "/home": (context) => const HomePage()
      },
    );
  }
}
