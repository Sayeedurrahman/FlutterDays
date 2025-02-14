import 'package:flutter/material.dart';
import 'package:flutter_days/pages/home_page.dart';
import 'package:flutter_days/pages/login_page.dart';
import 'package:flutter_days/widgets/themes.dart';
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
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      home: const LoginPage(),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark
      // ),
      initialRoute: "/login",
      routes: {
        "/login": (context) => const LoginPage(),
        "/home": (context) => const HomePage()
      },
    );
  }
}
