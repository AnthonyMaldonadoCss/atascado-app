import 'package:flutter/material.dart';

class GoogleLogin extends StatefulWidget {
  const GoogleLogin({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  GoogleLoginState createState() => GoogleLoginState();
}

class GoogleLoginState extends State<GoogleLogin> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
        ),
        child: Row(
          children: [
            const Text('Logeate con ',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w700)),
            const ImageIcon(
              AssetImage('assets/images/g-icon.png'),
              // color: Colors.white,
              color: Colors.white,
              size: 25,
            ),
          ],
        ),
      ),
    ]);
  }
}
