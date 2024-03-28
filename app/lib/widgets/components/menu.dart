import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.home_outlined)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.qr_code_2_outlined)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.settings_outlined)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.logout_outlined)),
              ],
            ),
          ),
    );
  }
}
