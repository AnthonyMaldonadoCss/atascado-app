import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:permission_handler/permission_handler.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({Key? key}) : super(key: key);

  @override
  QrScannerState createState() => QrScannerState();
}

class QrScannerState extends State<QrScanner> {
  final GlobalKey qrKey = GlobalKey(
    debugLabel: 'QR',
  );
  Barcode? result;
  QRViewController? controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;

    return Column(
      children: [
        Expanded(
          flex: 5,
          child: QRView(
              key: qrKey,
              overlay: QrScannerOverlayShape(
                borderColor: Colors.red,
                borderRadius: 10,
                borderLength: 30,
                borderWidth: 10,
                cutOutSize: scanArea,
              ),
              onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
              onQRViewCreated: (controller) async {
                setState(() {
                  this.controller = controller;
                });
                if (Platform.isIOS) await requestCameraPermission();
                // Call resumeCamera after controller is initialized
                controller.scannedDataStream.listen((scanData) {
                  setState(() {
                    result = scanData;
                  });
                  // Navigator.pop(context);
                });
              }),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: (result != null) ? Text(result!.code!) : Text('Scan a code'),
          ),
        )
      ],
    );
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  void resumeCamera() {
    if (Platform.isAndroid) {
      controller?.pauseCamera();
    } else if (Platform.isIOS) {
      print(controller);
      controller?.resumeCamera();
    }
  }

  Future<void> requestCameraPermission() async {
    final PermissionStatus status = await Permission.camera.request();
    if (status.isGranted) {
      resumeCamera();
    } else if (status.isDenied) {
      // Mamate un guevo
      await openAppSettings();
    } else if (status.isPermanentlyDenied) {
      await openAppSettings();
    }
  }
}
