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
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class BarCodeScanner0 extends StatefulWidget {
  const BarCodeScanner0({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _BarCodeScanner0State createState() => _BarCodeScanner0State();
}

class _BarCodeScanner0State extends State<BarCodeScanner0> {
  late CameraController cameraController;
  late List<CameraDescription> cameras;

  @override
  void initState() {
    super.initState();
    initCamera();
    // Reiniciar la lista de códigos de barras en el estado de la aplicación al entrar
    FFAppState().multipleBarCodesList = [];
  }

  void initCamera() async {
    cameras = await availableCameras();
    cameraController = CameraController(cameras[0], ResolutionPreset.medium);
    cameraController.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  Future<void> scanBarcode() async {
    // Detener la cámara antes de iniciar el escáner de código de barras
    await cameraController.stopImageStream();
    await cameraController.dispose();

    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666', 'Cancelar', true, ScanMode.BARCODE);

    if (!FFAppState().multipleBarCodesList.contains(barcodeScanRes) &&
        barcodeScanRes != '-1') {
      setState(() {
        FFAppState().multipleBarCodesList.add(barcodeScanRes);
      });
    }

    // Reiniciar la cámara después del escaneo
    initCamera();
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Asegúrate de ajustar el ancho y la altura como en el código anterior
    final width = widget.width ?? MediaQuery.of(context).size.width;
    final height = widget.height ?? MediaQuery.of(context).size.height;

    if (cameraController.value.isInitialized) {
      return Container(
        width: width,
        height: height,
        child: Column(
          children: <Widget>[
            // La vista previa de la cámara y los botones como en el código anterior
            // ...
          ],
        ),
      );
    } else {
      return Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      );
    }
  }
}
