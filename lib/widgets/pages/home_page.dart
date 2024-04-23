import 'package:atascados/widgets/components/shared/app_background.dart';
import 'package:atascados/widgets/components/shared/app_bottom_bar.dart';
import 'package:atascados/widgets/components/shared/app_bottom_item.dart';
import 'package:atascados/widgets/pages/scanner_page.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

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
          decoration: setBoxDecoration(Alignment.topLeft, Alignment.bottomRight,
              [Colors.blue.shade100, Colors.blue.shade500]),
          child: const Center(
            child: Text("Home"),
          )),
      bottomNavigationBar: setAppBottomBar([
        AppBottomItem(
            onPressed: () => {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const HomePage()))
                },
            icon: const Icon(Icons.home),
            isSelected: true),
        AppBottomItem(
            onPressed: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ScannerPage()))
                },
            icon: const Icon(Icons.qr_code_2),
            isSelected: false),
        AppBottomItem(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            isSelected: false)
      ]),
    );
  }
}
