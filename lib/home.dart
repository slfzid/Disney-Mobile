import 'package:flutter/material.dart';
import 'package:pab_055/BottomNavigationBar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String? nama, nbi, email, alamat, ig;
  void data() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? _nama = prefs.getString('nama');
    final String? _nbi = prefs.getString('nbi');
    final String? _email = prefs.getString('email');
    final String? _alamat = prefs.getString('alamat');
    final String? _ig = prefs.getString('ig');

    setState(() {
      nama = _nama;
      nbi = _nbi;
      email = _email;
      alamat = _alamat;
      ig = _ig;
    });
  }

  void initState() {
    super.initState();
    data();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Text(
                'Welcome to',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'PRAKTIKUM PAB 2023',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                '$nbi',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 16),
              Image.asset('lib/assets/micky.png'),
              const SizedBox(height: 25),
              Text(
                '$nama',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.only(bottom: 100),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return BottomNavigationScreen();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  child: Text('Masuk', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
