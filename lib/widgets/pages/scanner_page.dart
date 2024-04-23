import 'package:atascados/widgets/components/qr_scanner.dart';
import 'package:atascados/widgets/components/shared/app_background.dart';
import 'package:atascados/widgets/components/shared/app_bottom_bar.dart';
import 'package:atascados/widgets/components/shared/app_bottom_item.dart';
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
        decoration: setBoxDecoration(Alignment.topLeft, Alignment.bottomRight,
            [Colors.blue.shade100, Colors.blue.shade500]),
        child: QrScanner(),
      ),
      bottomNavigationBar: setAppBottomBar([
        AppBottomItem(
            onPressed: () => {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const HomePage()))
                },
            icon: const Icon(Icons.home),
            isSelected: false),
        AppBottomItem(
            onPressed: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ScannerPage()))
                },
            icon: const Icon(Icons.qr_code_2),
            isSelected: true),
        AppBottomItem(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            isSelected: false)
      ]),
    );
  }
}
