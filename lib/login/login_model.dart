import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for EnterEmail widget.
  FocusNode? enterEmailFocusNode;
  TextEditingController? enterEmailTextController;
  String? Function(BuildContext, String?)? enterEmailTextControllerValidator;
  String? _enterEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for EnterPassword widget.
  FocusNode? enterPasswordFocusNode;
  TextEditingController? enterPasswordTextController;
  late bool enterPasswordVisibility;
  String? Function(BuildContext, String?)? enterPasswordTextControllerValidator;
  String? _enterPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for ConfirmPassword widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  String? _confirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for LoginName widget.
  FocusNode? loginNameFocusNode;
  TextEditingController? loginNameTextController;
  String? Function(BuildContext, String?)? loginNameTextControllerValidator;
  String? _loginNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for LoginPassword widget.
  FocusNode? loginPasswordFocusNode;
  TextEditingController? loginPasswordTextController;
  late bool loginPasswordVisibility;
  String? Function(BuildContext, String?)? loginPasswordTextControllerValidator;
  String? _loginPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (sendEmail)] action in SignupButton widget.
  ApiCallResponse? apiResult87u;

  @override
  void initState(BuildContext context) {
    enterEmailTextControllerValidator = _enterEmailTextControllerValidator;
    enterPasswordVisibility = false;
    enterPasswordTextControllerValidator =
        _enterPasswordTextControllerValidator;
    confirmPasswordVisibility = false;
    confirmPasswordTextControllerValidator =
        _confirmPasswordTextControllerValidator;
    loginNameTextControllerValidator = _loginNameTextControllerValidator;
    loginPasswordVisibility = false;
    loginPasswordTextControllerValidator =
        _loginPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    enterEmailFocusNode?.dispose();
    enterEmailTextController?.dispose();

    enterPasswordFocusNode?.dispose();
    enterPasswordTextController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordTextController?.dispose();

    loginNameFocusNode?.dispose();
    loginNameTextController?.dispose();

    loginPasswordFocusNode?.dispose();
    loginPasswordTextController?.dispose();
  }
}
