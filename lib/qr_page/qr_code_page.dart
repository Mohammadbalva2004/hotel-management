import 'package:flutter/material.dart';
import 'package:untitled/qr_page/qr_scanner.dart';

class QrCodePage extends StatefulWidget {
  const QrCodePage({super.key});

  @override
  State<QrCodePage> createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  String scannedData = '';

  void _startScan() async {
    final result = await Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (context) => QrScanner()));

    if (result != null) {
      setState(() {
        scannedData = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 70),
          Image.asset('assets/images/welcome.png', height: 50),
          const SizedBox(height: 50),
          Container(
            height: 450,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                Image.asset(
                  "assets/images/scanner.png",
                  height: 150,
                  width: 150,
                ),
                const SizedBox(height: 50),
                const Text(
                  "Align QR Code within the \n frame to scan",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: _startScan,
                    child: const Text(
                      "Scan QR Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 168,
            width: double.infinity,
            color: Color.fromRGBO(240, 244, 246, 1),
            child: Column(
              children: [
                SizedBox(height: 50),

                Text(
                  "help@savor-delights.com",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "+1 (999) 1234 567",
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                ),
                SizedBox(height: 20),
                Image.asset("assets/images/welcomeee.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
