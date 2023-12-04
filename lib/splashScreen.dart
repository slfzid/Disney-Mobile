import 'package:flutter/material.dart';
import 'package:pab_055/home.dart';
import 'package:pab_055/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () async {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      final String? nbi = await prefs.getString('nbi');

      if (nbi != null) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (build) {
          return home();
        }));
      } else {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (build) {
          return RegisterScreen();
        }));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 165, 13, 13),
        child: 
        Center(
          child: Column(
            children:[
              Image.asset(
                'lib/assets/map.png',scale: 1,
              ),
              Padding(padding: EdgeInsets.only(top: 40)),
              Image.asset(
                'lib/assets/perisai.png',scale: 4,
              ),
              Padding(padding: EdgeInsets.only(top: 138)),
              Text("PRAKTIKUM PAB 2023", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color:Colors.white),),
              Image.asset(
                'lib/assets/mapr.png',scale: 1,
              ),
            ]
          )
        ),
      ),
    );
  }
}
