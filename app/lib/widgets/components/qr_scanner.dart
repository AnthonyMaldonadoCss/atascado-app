import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

MobileScannerController cameraController = MobileScannerController();

class QrScanner extends StatefulWidget {
  const QrScanner({Key? key}) : super(key: key);

  @override
  QrScannerState createState() => QrScannerState();
}

class QrScannerState extends State<QrScanner> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MobileScanner(
        onDetect: (BarcodeCapture barcodes) {},
      ),
    );
  }
}
