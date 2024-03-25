import 'package:atascados/widgets/components/google_login.dart';
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
        const Text('Atascados',
            style: TextStyle(
                fontSize: 40,
                fontFamily: 'Roboto',
                letterSpacing: 0,
                fontWeight: FontWeight.w700)),
        const Image(
          image: AssetImage('assets/images/parking.png'),
          color: Colors.blueAccent,
        ),
        SizedBox(height: 10),
        const GoogleLogin(),
      ],
    )));
  }
}
