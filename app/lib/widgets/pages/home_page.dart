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
      body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.blue.shade100,
                Colors.blue.shade500,
              ]))),
      bottomNavigationBar: BottomAppBar(
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
          )),
    );
  }
}
