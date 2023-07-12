import 'package:flutter/material.dart';
import 'package:flutter_threads_clone/views/tabsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Threads clone',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        primaryColor: const Color.fromRGBO(34, 34, 34, 1),
        colorScheme: ColorScheme(
          brightness:
              Brightness.light, // Boilerplate code needed for colorScheme
          primary: Colors.white, // Boilerplate code needed for colorScheme
          onPrimary: Colors.white, // Boilerplate code needed for colorScheme
          secondary: Colors.white12, // Boilerplate code needed for colorScheme
          onSecondary:
              Colors.white12, // Boilerplate code needed for colorScheme
          error: Colors.red, // Boilerplate code needed for colorScheme
          onError: Colors.red[400]!, // Boilerplate code needed for colorScheme
          background: Colors.white,
          onBackground: Colors.white, // Boilerplate code needed for colorScheme
          surface: Colors.blueGrey, // Boilerplate code needed for colorScheme
          onSurface: Colors.blueGrey, // Boilerplate code needed for colorScheme
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        primaryColor: const Color.fromRGBO(242, 242, 245, 1),
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: const Color.fromRGBO(242, 242, 245, 1),
          onPrimary: Colors.white, // Boilerplate code needed for colorScheme
          secondary: Colors.white12, // Boilerplate code needed for colorScheme
          onSecondary:
              Colors.white12, // Boilerplate code needed for colorScheme
          error: Colors.red, // Boilerplate code needed for colorScheme
          onError: Colors.red[400]!, // Boilerplate code needed for colorScheme
          background: const Color.fromRGBO(17, 17, 17, 1),
          onBackground: Colors.white, // Boilerplate code needed for colorScheme
          surface: Colors.blueGrey, // Boilerplate code needed for colorScheme
          onSurface: Colors.blueGrey, // Boilerplate code needed for colorScheme
        ),
      ),
      home: TabsPage(),
    );
  }
}
