import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_scanner_overlay/qr_scanner_overlay.dart';
//import 'package:qrcode_scanner/qr_scanner.dart';
//import 'package:qrcode_scanner/qr.dart';
import 'package:qrcode_scanner/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QRscanner(),
      debugShowCheckedModeBanner: false,
      title: 'QR code Scanner',
    );
  }
}

class QRscanner extends StatefulWidget {
  const QRscanner({super.key});
  @override
  State<QRscanner> createState() => _QRscannerState();
}

class _QRscannerState extends State<QRscanner> {
  bool isflashon = false;
  bool isfontcam = false;
  bool isscancompleted = false;
  MobileScannerController cameraController = MobileScannerController();

  void closescreen() {
    isscancompleted = false;
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(
          style: ButtonStyle(
            iconSize: MaterialStatePropertyAll(30),
            iconColor: MaterialStatePropertyAll(Colors.amber),
            backgroundColor: MaterialStatePropertyAll(Colors.white),
          ),
          onPressed: () {},
          icon: Icon(Icons.qr_code_scanner),
        ),
        centerTitle: true,
        title: const Text(
          "QR Scanner",
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isflashon = !isflashon;
              });
              cameraController.toggleTorch();
            },
            icon: Icon(
              Icons.flash_on,
              color: isflashon ? Colors.white : Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                isfontcam = !isfontcam;
              });
              cameraController.switchCamera();
            },
            icon: Icon(
              Icons.flip_camera_android,
              color: isfontcam ? Colors.white : Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Place the QR Code in designated area",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Let the scan do its magic, it starts on its own",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  MobileScanner(
                    controller: cameraController,
                    allowDuplicates: true,
                    onDetect: (barcode, args) {
                      if (!isscancompleted) {
                        isscancompleted = true;
                        String code = barcode.rawValue ?? "---";
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return QRresult(
                              code: code,
                              closescreen: closescreen,
                            );
                          },
                        ));
                      }
                    },
                  ),
                  QRScannerOverlay(
                    overlayColor: Colors.black,
                    borderColor: Colors.amber,
                    borderRadius: 20,
                    borderStrokeWidth: 10,
                    scanAreaHeight: 250,
                    scanAreaWidth: 250,
                  )
                ],
              ),
            ),
            const Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Scan properly to see results",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
