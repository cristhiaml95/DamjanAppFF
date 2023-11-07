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

class BarcodeScannerWidget extends StatefulWidget {
  const BarcodeScannerWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _BarcodeScannerWidgetState createState() => _BarcodeScannerWidgetState();
}

class _BarcodeScannerWidgetState extends State<BarcodeScannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 400,
      height: widget.height ?? 300,
      child: QrScannerPlusView(
        _onResult,
        debug: true,
      ),
    );
  }

  _onResult(List<Barcode> barcodes) {
    for (final barcode in barcodes) {
      print(barcode.type);
      print(barcode.rawValue);
    }
  }
}
