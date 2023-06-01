import 'package:appflutter/home.dart';
import 'package:appflutter/login_screen.dart';
import 'package:appflutter/senha.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginScreen(),
        "/home": (context) => CircleApp(),
        "/novasenha": (context) => esquecisenha(),
      },
    );
  }
}
class Tela1 extends StatelessWidget {
  const Tela1 ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginScreen()
    );
  }
}

class Tela2 extends StatelessWidget {
  const Tela2 ({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CircleApp(),
    );
  }
}

class Tela3 extends StatelessWidget {
  const Tela3 ({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: esquecisenha(),
    );
  }
}
