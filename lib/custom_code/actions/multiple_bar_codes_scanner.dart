// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'package:qr_scanner_plus/qr_scanner_plus.dart';

Future<List<String>> multipleBarCodesScanner() async {
  // Add your function code here!
  final Completer<List<String>> completer = Completer();

  final scannerView = QrScannerPlusView(
    (List<Barcode> barcodes) {
      List<String> barcodeValues = barcodes
          .map((barcode) => barcode.rawValue)
          .where((element) => element != null)
          .toList()
          .cast<String>();
      // Si la lista está vacía, retorna un mensaje indicando que no se encontraron códigos de barras
      if (barcodeValues.isEmpty) {
        completer.complete(['No barcodes found']);
      } else {
        completer.complete(barcodeValues);
      }
    },
    debug: true,
  );

  // This will ensure the function awaits the callback to be called,
  // and then returns the list of barcode values.
  return await completer.future;
}
