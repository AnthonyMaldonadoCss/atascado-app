import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 10),
        const Text(
          'Atascados App',
          style: TextStyle(fontSize: 40, fontFamily: 'Nexa'),
        ),
        const Image(
          image: AssetImage('assets/images/parking.png'),
          color: Colors.blueAccent,
        ),
        SizedBox(height: 50),
        Row(mainAxisSize: MainAxisSize.min, children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
            ),
            child: Row(
              children: [
                const Text('Logeate con ',
                    style: TextStyle(color: Colors.white)),
                const ImageIcon(
                  AssetImage('assets/images/g-icon.png'),
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ])
      ],
    )));
  }
}
