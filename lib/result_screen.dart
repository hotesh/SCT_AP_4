/*import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrcode_scanner/qr_scanner.dart';

class ResultsScreen extends StatelessWidget {
  constResultsScreen({super.key});

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
      body: const Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            //show qr code
            QrImage(
              data: '',
              size: 150,
              version: QrVersions.auto,
            ),
            Text(
              "Scanned Result",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              " Result",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  //fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {},
                child: Text(
                  "copy",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/