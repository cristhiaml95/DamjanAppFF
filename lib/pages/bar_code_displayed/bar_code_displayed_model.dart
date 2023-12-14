import '/flutter_flow/flutter_flow_util.dart';
import 'bar_code_displayed_widget.dart' show BarCodeDisplayedWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class BarCodeDisplayedModel extends FlutterFlowModel<BarCodeDisplayedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - getColumn] action in Button widget.
  List<String>? getColumnOP;
  var barCodeOP = '';
  // Stores action output result for [Custom Action - wordInList] action in Button widget.
  bool? wordInListOP;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
