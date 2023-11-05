import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'barcode_scan_g_a_widget.dart' show BarcodeScanGAWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class BarcodeScanGAModel extends FlutterFlowModel<BarcodeScanGAWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Custom Action - getColumn] action in Button widget.
  List<String>? getColumnOP;
  // Stores action output result for [Custom Action - multipleBarCodesScanner] action in Button widget.
  List<String>? multipleBarCodesScannerOP;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
