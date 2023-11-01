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

Future insertBarCode(
  String columnName,
  String tableName,
  String value,
) async {
  // Add your function code here!
  final supabase = SupabaseClient('https://aaxptvfturwawmigxwgq.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFheHB0dmZ0dXJ3YXdtaWd4d2dxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTgzMzcxODcsImV4cCI6MjAxMzkxMzE4N30.dIt1jxhITMVw7K_JSg7hnOgUNDxnpj441d_6rPxEBTM');

  try {
    await supabase.from(tableName).insert({columnName: value}).execute();
  } catch (e) {
    print('Error inserting data into Supabase: $e');
  }
}
