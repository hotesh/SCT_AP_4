import 'package:flutter/material.dart';

class QRscanner extends StatefulWidget {
  const QRscanner({super.key});
  @override
  State<QRscanner> createState() => _QRscannerState();
}

class _QRscannerState extends State<QRscanner> {
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
        title: Text(
          "QR Scanner",
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        ),

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.flash_on),)
        ],
      ),
    );
  }
}
