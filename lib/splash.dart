import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:marriage_event_mangement/assets.dart';
import 'package:marriage_event_mangement/dashboard.dart';
import 'package:marriage_event_mangement/dateandtime.dart';
import 'package:marriage_event_mangement/signin.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(Duration(seconds: 5));
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignIn()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.indigo],
            stops: [0, 1],
          ),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage('assets/47f3b1c1f251b25307a4968b47822423.jpg'),
                  fit: BoxFit.cover)),
          child: Center(
            child: Text(
              'Dream Wedding',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
