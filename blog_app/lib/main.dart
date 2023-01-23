import 'package:blog_app/home_screen.dart';
import 'package:blog_app/sign_in.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

/*
How to solve Flutter CERTIFICATE_VERIFY_FAILED error while performing a POST request?
This should be used while in development mode,
do NOT do this when you want to release to production,
the aim of this answer is to make the development a bit easier for you,
for production, you need to fix your certificate issue and use it properly.

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Blog app Symfony Backend ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        SignIn.route: (context) => const SignIn(),
        HomeScreen.route: (context) => const HomeScreen()
      },
      initialRoute: SignIn.route,
    );
  }
}
