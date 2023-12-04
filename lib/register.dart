import 'package:flutter/material.dart';
import 'package:pab_055/home.dart';
import 'package:pab_055/widget/fieldCustom.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formkey = GlobalKey<FormState>();
  TextEditingController namaController = TextEditingController();
  TextEditingController nbiController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController igController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: formkey,
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/assets/logo.png',
                scale: 4,
              ),
              Text("WELCOME",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text("Praktikum PAB 2023",
                  style: TextStyle(fontSize: 20)),
              Padding(padding: EdgeInsets.only(top: 8)),
              textFieldCustom('Masukan Nama', namaController),
              textFieldCustom('Masukan NBI', nbiController),
              textFieldCustom('Masukan Email', emailController),
              textFieldCustom('Masukan Alamat', alamatController),
              textFieldCustom('Masukan IG', igController),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 8),
                child: ElevatedButton(
                  onPressed: () async {
                    if (formkey.currentState!.validate()) {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      await prefs.setString('nama', namaController.text);
                      await prefs.setString('nbi', nbiController.text);
                      await prefs.setString('email', emailController.text);
                      await prefs.setString('alamat', alamatController.text);
                      await prefs.setString('ig', igController.text);
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (build) {
                        return home();
                      }));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  child: Center(
                    child: Text("Daftar"),
                  ),
                ),
              )
            ],
          ))),
    );
  }
}
