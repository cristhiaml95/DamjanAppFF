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

import 'package:qr_scanner_plus/qr_scanner_plus.dart';

class BarCodeScanner extends StatefulWidget {
  const BarCodeScanner({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _BarCodeScannerState createState() => _BarCodeScannerState();
}

class _BarCodeScannerState extends State<BarCodeScanner> {
  final Set<String> _scannedBarCodesSet = {};

  @override
  void initState() {
    super.initState();
    // Reinicia la lista en el estado de la aplicación
    FFAppState().multipleBarCodesList.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? MediaQuery.of(context).size.width,
      height: widget.height ?? MediaQuery.of(context).size.height,
      child: QrScannerPlusView(
        _onResult,
        debug: true, // Consider setting to false for production
      ),
    );
  }

  void _onResult(List<Barcode> barcodes) {
    setState(() {
      for (final barcode in barcodes) {
        if (barcode.rawValue != null) {
          _scannedBarCodesSet.add(barcode.rawValue!);
        }
      }
      // Actualiza el estado de la aplicación con una lista de elementos únicos
      FFAppState().multipleBarCodesList = _scannedBarCodesSet.toList();
    });
  }
}
