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

class CamaraWidget extends StatefulWidget {
  const CamaraWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _CamaraWidgetState createState() => _CamaraWidgetState();
}

class _CamaraWidgetState extends State<CamaraWidget> {
  CameraController? _cameraController;
  late Future<void> _initializeControllerFuture;
  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  Future<void> _initCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;
    _cameraController = CameraController(
      firstCamera,
      ResolutionPreset.max,
    );
    _initializeControllerFuture = _cameraController!.initialize();
  }

  Future<void> _resetCamera() async {
    if (_cameraController != null) {
      await _cameraController!.dispose();
    }
    _initCamera();
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // If the Future is complete, display the preview.
          return Stack(
            children: [
              Container(
                width: widget.width ?? double.infinity,
                height: widget.height ?? double.infinity,
                child: CameraPreview(_cameraController!),
              ),
              Positioned(
                right: 10,
                bottom: 10,
                child: FloatingActionButton(
                  onPressed: _resetCamera,
                  child: Icon(Icons.remove_red_eye),
                ),
              ),
            ],
          );
        } else {
          // Otherwise, display a loading indicator.
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
