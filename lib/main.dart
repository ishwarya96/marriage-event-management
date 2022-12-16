import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:marriage_event_mangement/dateandtime.dart';

import 'package:marriage_event_mangement/signin.dart';
import 'package:marriage_event_mangement/splash.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp().then((value) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
