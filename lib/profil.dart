import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class profil extends StatefulWidget {
  const profil({super.key});

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
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
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Column(children: [
          Padding(padding: EdgeInsets.only(top: 50)),
          Text(
            'Profile',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 50)),
          Image.asset(
            'lib/assets/poster.jpg',
          ),
          SizedBox(height: 40),
          SizedBox(
            width: 350,
            child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide()),
                  icon: Icon(
                    Icons.account_box_rounded,
                    color: Colors.red,
                  ),
                  labelText: '$nama',
                  hintText: 'Nama',
                ),
                onChanged: (text) {
                  print('$text');
                }),
          ),
          SizedBox(height: 25),
          SizedBox(
            width: 350,
            child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide()),
                  icon: Icon(
                    Icons.credit_card_rounded,
                    color: Colors.red,
                  ),
                  labelText: '$nbi',
                  hintText: 'NBI',
                ),
                onChanged: (text) {
                  print('$text');
                }),
          ),
          SizedBox(height: 25),
          SizedBox(
            width: 350,
            child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide()),
                  icon: Icon(
                    Icons.class_rounded,
                    color: Colors.red,
                  ),
                  labelText: '$email',
                  hintText: 'Email',
                ),
                onChanged: (text) {
                  print('$text');
                }),
          ),
          SizedBox(height: 25),
          SizedBox(
            width: 350,
            child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide()),
                  icon: Icon(
                    Icons.location_history_rounded,
                    color: Colors.red,
                  ),
                  labelText: '$alamat',
                  hintText: 'Alamat',
                ),
                onChanged: (text) {
                  print('$text');
                }),
          ),
          SizedBox(height: 25),
          SizedBox(
              width: 350,
              child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide()),
                    icon: Icon(
                      Icons.linked_camera_rounded,
                      color: Colors.red,
                    ),
                    labelText: '$ig',
                    hintText: 'IG',
                  ),
                  onChanged: (text) {
                    print('$text');
                  }))
        ])));
  }
}
