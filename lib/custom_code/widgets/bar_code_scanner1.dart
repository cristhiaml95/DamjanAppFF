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
import '/custom_code/actions/get_column.dart' as custom_actions;
import '/custom_code/actions/word_in_list.dart' as custom_actions;

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
  late CameraController controller;
  late List<CameraDescription> cameras;
  bool isScanning = false;

  Future<void> initCamera() async {
    cameras = await availableCameras();
    controller = CameraController(
      cameras.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.back,
      ),
      ResolutionPreset.high,
    );
    await controller.initialize();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    initCamera();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _onResult(List<Barcode> barcodes) async {
    final columnData =
        await custom_actions.getColumn('barcodetest', 'barcode2');
    final List<ScanResultInListListStruct> scannedBarCodes =
        []; // Asegúrate de que este es el tipo correcto
    final Set<String> uniqueBarCodes = Set<String>();

    for (final barcode in barcodes) {
      final scanResult = barcode.rawValue!;
      if (uniqueBarCodes.contains(scanResult)) continue;
      final inList = await custom_actions.wordInList(scanResult, columnData);
      uniqueBarCodes.add(scanResult);

      // Crear el objeto de la estructura y añadirlo a la lista
      scannedBarCodes.add(ScanResultInListListStruct(
        scanResult: scanResult,
        inList: inList,
      ));
    }

    setState(() {
      FFAppState().scanResultList = scannedBarCodes;
    });
  }

  void _resetBarCodes() {
    setState(() {
      FFAppState().scanResultList.clear();
    });
  }

  void _toggleScanning() {
    setState(() {
      if (!isScanning) {
        FFAppState().scanResultList.clear();
      }
      isScanning = !isScanning;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Barcode Scanner'),
      ),
      body: Center(
        child: isScanning
            ? QrScannerPlusView(
                debug: true,
                (barcodes) {
                  _onResult(barcodes);
                },
                // Asegúrate de incluir cualquier otro argumento requerido aquí
              )
            : Container(),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _toggleScanning,
            tooltip: 'Scan',
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
