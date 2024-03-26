import 'package:atascados/widgets/components/qr_scanner.dart';
import 'package:atascados/widgets/pages/home_page.dart';
import 'package:flutter/material.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({Key? key}) : super(key: key);

  @override
  ScannerPageState createState() => ScannerPageState();
}

class ScannerPageState extends State<ScannerPage> {
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
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QrScanner(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          )
                        },
                    icon: const Icon(Icons.home_outlined)),
                IconButton(
                    isSelected: true,
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
