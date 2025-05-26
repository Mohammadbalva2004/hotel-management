import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:untitled/qr_page/qr_code_page.dart';
import 'package:url_launcher/url_launcher.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({super.key});

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  MobileScannerController cameraController = MobileScannerController();
  bool isScanning = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          MobileScanner(
            controller: cameraController,
            onDetect: (capture) {
              final List<Barcode> barcodes = capture.barcodes;
              if (barcodes.isNotEmpty && isScanning) {
                String? scannedData = barcodes.first.rawValue;
                if (scannedData != null && scannedData.isNotEmpty) {
                  setState(() => isScanning = false);
                  Future.delayed(Duration(seconds: 2), () {
                    _handleScannedData(scannedData);
                  });
                }
              }
            },
          ),
          Positioned(
            top: 50,
            left: 20,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
              onPressed:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QrCodePage()),
                  ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: IconButton(
              icon: Icon(Icons.flash_on, color: Colors.white, size: 30),
              onPressed: () => cameraController.toggleTorch(),
            ),
          ),
          Positioned(
            bottom: 150,
            child: Text(
              "Align the QR code inside the frame",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _buildScannerFrame(),
        ],
      ),
    );
  }

  Widget _buildScannerFrame() {
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 4),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  void _handleScannedData(String data) async {
    print("Scanned QR Code: $data");

    if (data.startsWith("http")) {
      await launchUrl(Uri.parse(data), mode: LaunchMode.externalApplication);
    } else if (data.startsWith("upi://pay")) {
      await launchUrl(Uri.parse(data), mode: LaunchMode.externalApplication);
    } else {
      _showResultDialog(data);
    }
    setState(() => isScanning = true);
  }

  void _showResultDialog(String result) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text("QR Code Scanned"),
            content: Text(result),
            actions: [
              TextButton(
                onPressed: () {
                  setState(() => isScanning = true);
                  Navigator.pop(context);
                },
                child: Text("Scan Again"),
              ),
            ],
          ),
    );
  }
}
