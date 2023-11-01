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

import 'package:supabase_flutter/supabase_flutter.dart';

Future<bool?> correoInTable(
  String? correo1,
  String? columna1,
  String? tabla1,
) async {
  // Add your function code here!
  if (correo1 == null ||
      correo1.isEmpty ||
      columna1 == null ||
      columna1.isEmpty ||
      tabla1 == null ||
      tabla1.isEmpty) {
    // Si alguno de los parámetros es null o vacío, retornamos false.
    return false;
  }
  final supabase = SupabaseClient('https://aaxptvfturwawmigxwgq.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFheHB0dmZ0dXJ3YXdtaWd4d2dxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTgzMzcxODcsImV4cCI6MjAxMzkxMzE4N30.dIt1jxhITMVw7K_JSg7hnOgUNDxnpj441d_6rPxEBTM');
  final response =
      await supabase.from(tabla1).select().eq(columna1, correo1).execute();
  final rows = response.data as List<dynamic>;
  return rows.isNotEmpty;
}
