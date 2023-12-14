import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailTF widget.
  FocusNode? emailTFFocusNode;
  TextEditingController? emailTFController;
  String? Function(BuildContext, String?)? emailTFControllerValidator;
  String? _emailTFControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ukq13eoi' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for PasswordTF widget.
  FocusNode? passwordTFFocusNode;
  TextEditingController? passwordTFController;
  late bool passwordTFVisibility;
  String? Function(BuildContext, String?)? passwordTFControllerValidator;
  String? _passwordTFControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9sburboz' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for RPasswordTF widget.
  FocusNode? rPasswordTFFocusNode;
  TextEditingController? rPasswordTFController;
  late bool rPasswordTFVisibility;
  String? Function(BuildContext, String?)? rPasswordTFControllerValidator;
  String? _rPasswordTFControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'w8lmk192' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for NameTF widget.
  FocusNode? nameTFFocusNode;
  TextEditingController? nameTFController;
  String? Function(BuildContext, String?)? nameTFControllerValidator;
  String? _nameTFControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ycopq0js' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for LastNameTF widget.
  FocusNode? lastNameTFFocusNode;
  TextEditingController? lastNameTFController;
  String? Function(BuildContext, String?)? lastNameTFControllerValidator;
  String? _lastNameTFControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'r64lvhrs' /* Field is required */,
      );
    }

    return null;
  }

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

  @override
  void initState(BuildContext context) {
    emailTFControllerValidator = _emailTFControllerValidator;
    passwordTFVisibility = false;
    passwordTFControllerValidator = _passwordTFControllerValidator;
    rPasswordTFVisibility = false;
    rPasswordTFControllerValidator = _rPasswordTFControllerValidator;
    nameTFControllerValidator = _nameTFControllerValidator;
    lastNameTFControllerValidator = _lastNameTFControllerValidator;
  }

  @override
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
