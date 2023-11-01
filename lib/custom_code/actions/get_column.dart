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
import 'package:supabase/supabase.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<String>> getColumn(
  String tableName,
  String columnName,
) async {
  // Add your function code here!
  const SUPABASE_URL = 'https://aaxptvfturwawmigxwgq.supabase.co';
  const SUPABASE_API_KEY =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFheHB0dmZ0dXJ3YXdtaWd4d2dxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTgzMzcxODcsImV4cCI6MjAxMzkxMzE4N30.dIt1jxhITMVw7K_JSg7hnOgUNDxnpj441d_6rPxEBTM';

  final headers = {
    'apikey': SUPABASE_API_KEY,
    'Content-Type': 'application/json',
  };

  final response = await http.get(
    Uri.parse('$SUPABASE_URL/rest/v1/$tableName?select=$columnName'),
    headers: headers,
  );

  if (response.statusCode == 200) {
    final data = json.decode(response.body) as List;
    return data.map((item) {
      final value = item[columnName];
      if (value is String) {
        return value;
      } else {
        throw Exception('Unexpected data type for column $columnName');
      }
    }).toList();
  } else {
    throw Exception('Failed to fetch data from Supabase: ${response.body}');
  }
}
