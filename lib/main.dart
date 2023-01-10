import 'package:flutter/material.dart';
import 'package:interapp/presentation/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      darkTheme: ThemeData.dark().copyWith(
          colorScheme: const ColorScheme.dark(primary: Colors.blue),
          inputDecorationTheme: const InputDecorationTheme(
              contentPadding: EdgeInsets.all(5),
              border: UnderlineInputBorder())),
      home: const SplashScreen(),
    );
  }
}
