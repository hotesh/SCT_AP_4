/*import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

const bgcolor = Color(0xfffafafa);

class QRScanner extends StatefulWidget {
  const QRScanner({super.key});
  @override
  State<QRScanner> createState() => _QRScannerState();

class _QRScannerState extends State<QRSCanner>{

  bool isScanCompleted=false;
void closeScreen(){
  isScanCompleted=false;
}

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'QR-Scanner',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'place the qr code in this area',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  'Scanning will be started automatically',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      //fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
              ],
            )),
            Expanded(
              flex: 4,
              child: MobileScanner(
                allowDuplicates: true,
                //controller: cameraConroller,
                onDetect: (capture) {
                  // do something
                },
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  'Developed by HX3',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      //fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
}*/