import 'package:flutter/material.dart';
import 'package:pab_055/DetailMovieScreen.dart';

class MoveHomeScreen extends StatefulWidget {
  const MoveHomeScreen({Key? key}) : super(key: key);

  @override
  State<MoveHomeScreen> createState() => _Page2State();
}

class _Page2State extends State<MoveHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'DISNEY',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 20),

            // Top Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailMovieScreen()),
                    );
                  },
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'lib/assets/poster.jpg',
                        width: 150,
                        height: 150,
                      ),
                      Text('Button 1'),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailMovieScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/assets/poster.jpg',
                        width: 150,
                        height: 150,
                      ),
                      Text('Button 2'),
                    ],
                  ),
                ),
              ],
            ),

            // Middle Row
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailMovieScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/assets/poster.jpg',
                        width: 150,
                        height: 150,
                      ),
                      Text('Button 3'),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailMovieScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/assets/poster.jpg',
                        width: 150,
                        height: 150,
                      ),
                      Text('Button 4'),
                    ],
                  ),
                ),
              ],
            ),

            // Bottom Row
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailMovieScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/assets/poster.jpg',
                        width: 150,
                        height: 150,
                      ),
                      Text('Button 5'),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailMovieScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/assets/poster.jpg',
                        width: 150,
                        height: 150,
                      ),
                      Text('Button 6'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
