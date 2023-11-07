// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:camera/camera.dart';
import 'package:qr_scanner_plus/qr_scanner_plus.dart';

class BarCodeScanner1 extends StatefulWidget {
  const BarCodeScanner1({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _BarCodeScanner1State createState() => _BarCodeScanner1State();
}

class _BarCodeScanner1State extends State<BarCodeScanner1> {
  bool isScanning = false;

  void _onResult(List<Barcode> barcodes) {
    setState(() {
      // Usa un Set para evitar duplicados
      final Set<String> currentBarCodes =
          Set.from(FFAppState().multipleBarCodesList);
      // Agrega nuevos códigos de barras al Set, lo que automáticamente elimina duplicados
      currentBarCodes.addAll(barcodes
          .map((barcode) => barcode.rawValue!)
          .where((value) => value != null));
      // Convierte el Set de nuevo en una lista y guárdalo en el estado de la app
      FFAppState().multipleBarCodesList = currentBarCodes.toList();
    });
  }

  void _resetBarCodes() {
    setState(() {
      FFAppState().multipleBarCodesList.clear();
    });
  }

  void _toggleScanning() {
    setState(() {
      // Cambia el estado de isScanning cada vez que se presiona el botón
      isScanning = !isScanning;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BarcodeScanner1'),
      ),
      body: Center(
        child: isScanning
            ? QrScannerPlusView(
                (barcodes) {
                  _onResult(barcodes);
                },
              )
            : Container(), // Mostramos un contenedor vacío cuando no estamos escaneando
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed:
                _toggleScanning, // Este botón alternará el estado de escaneo
            tooltip: 'Escanear',
            child: Icon(isScanning ? Icons.stop : Icons.camera),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: _resetBarCodes,
            tooltip: 'Reset',
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
