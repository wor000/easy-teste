import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? emailTextController1;
  String? Function(BuildContext, String?)? emailTextController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? passwordTextController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordTextController1Validator;
  // State field(s) for mr-esqueci-a-senha widget.
  bool mrEsqueciASenhaHovered1 = false;
  // Stores action output result for [Backend Call - API (CONFERIR ASSINATURA)] action in Button widget.
  ApiCallResponse? retornoAssinatura;
  // State field(s) for mr-nao-possui-conta widget.
  bool mrNaoPossuiContaHovered1 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? emailTextController2;
  String? Function(BuildContext, String?)? emailTextController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? passwordTextController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordTextController2Validator;
  // State field(s) for mr-esqueci-a-senha widget.
  bool mrEsqueciASenhaHovered2 = false;
  // State field(s) for mr-nao-possui-conta widget.
  bool mrNaoPossuiContaHovered2 = false;

  @override
  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    emailTextController1?.dispose();

    textFieldFocusNode2?.dispose();
    passwordTextController1?.dispose();

    textFieldFocusNode3?.dispose();
    emailTextController2?.dispose();

    textFieldFocusNode4?.dispose();
    passwordTextController2?.dispose();
  }
}
