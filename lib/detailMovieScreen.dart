import 'package:flutter/material.dart';

class DetailMovieScreen extends StatefulWidget {
  const DetailMovieScreen({Key? key}) : super(key: key);

  @override
  State<DetailMovieScreen> createState() => _Page3State();
}

bool perubahan = false;

class _Page3State extends State<DetailMovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('lib/assets/poster.jpg'),
                  SizedBox(height: 20),
                  Text(
                    'Mickey Mouse',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        perubahan = !perubahan;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: perubahan ? Colors.green : Colors.blue,
                    ),
                    child: Text('Play'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
