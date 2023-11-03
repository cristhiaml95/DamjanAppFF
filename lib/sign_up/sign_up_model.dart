import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailTF widget.
  FocusNode? emailTFFocusNode;
  TextEditingController? emailTFController;
  String? Function(BuildContext, String?)? emailTFControllerValidator;
  // State field(s) for PasswordTF widget.
  FocusNode? passwordTFFocusNode;
  TextEditingController? passwordTFController;
  late bool passwordTFVisibility;
  String? Function(BuildContext, String?)? passwordTFControllerValidator;
  // State field(s) for RPasswordTF widget.
  FocusNode? rPasswordTFFocusNode;
  TextEditingController? rPasswordTFController;
  late bool rPasswordTFVisibility;
  String? Function(BuildContext, String?)? rPasswordTFControllerValidator;
  // State field(s) for NameTF widget.
  FocusNode? nameTFFocusNode;
  TextEditingController? nameTFController;
  String? Function(BuildContext, String?)? nameTFControllerValidator;
  // State field(s) for LastNameTF widget.
  FocusNode? lastNameTFFocusNode;
  TextEditingController? lastNameTFController;
  String? Function(BuildContext, String?)? lastNameTFControllerValidator;
  // State field(s) for statusDD widget.
  String? statusDDValue;
  FormFieldController<String>? statusDDValueController;
  // State field(s) for userRoleDD widget.
  String? userRoleDDValue;
  FormFieldController<String>? userRoleDDValueController;
  // State field(s) for PositionTF widget.
  FocusNode? positionTFFocusNode;
  TextEditingController? positionTFController;
  String? Function(BuildContext, String?)? positionTFControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordTFVisibility = false;
    rPasswordTFVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailTFFocusNode?.dispose();
    emailTFController?.dispose();

    passwordTFFocusNode?.dispose();
    passwordTFController?.dispose();

    rPasswordTFFocusNode?.dispose();
    rPasswordTFController?.dispose();

    nameTFFocusNode?.dispose();
    nameTFController?.dispose();

    lastNameTFFocusNode?.dispose();
    lastNameTFController?.dispose();

    positionTFFocusNode?.dispose();
    positionTFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
