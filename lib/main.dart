import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'welcome_screen.dart';
import 'signup_screen.dart';
import 'login_screen.dart';

import 'home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Waste Management',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        darkTheme: ThemeData(useMaterial3: true),
        initialRoute: 'welcome_screen',
        routes: {
          'welcome_screen': (context) => WelcomeScreen(),
          'registration_screen': (context) => RegistrationScreen(),
          'login_screen': (context) => LoginScreen(),
          'home_screen': (context) => MyHomePage()
        }
        // home: const MyHomePage(),
        );
  }
}
