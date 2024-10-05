import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrcode_scanner/main.dart';

class QRresult extends StatelessWidget {
  final String code;
  final Function() closescreen;

  const QRresult({super.key, required this.closescreen, required this.code});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return QRscanner();
                },
              ));
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
          ),
          centerTitle: true,
          title: const Text(
            "Scanned Result",
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(60),
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              QrImageView(
                data: "",
                size: 300,
                version: QrVersions.auto,
              ),
              const Text(
                "Scanned QR",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                code,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 150,
                height: 60,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: code));
                    },
                    child: const Text(
                      "copy",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
              )
            ],
          ),
        ));
  }
}
