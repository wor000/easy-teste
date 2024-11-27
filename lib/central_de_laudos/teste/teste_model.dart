import '/flutter_flow/flutter_flow_util.dart';
import 'teste_widget.dart' show TesteWidget;
import 'package:flutter/material.dart';

class TesteModel extends FlutterFlowModel<TesteWidget> {
  ///  Local state fields for this page.

  String? html;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFields_pdff widget.
  FocusNode? textFieldsPdffFocusNode;
  TextEditingController? textFieldsPdffTextController;
  String? Function(BuildContext, String?)?
      textFieldsPdffTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldsPdffFocusNode?.dispose();
    textFieldsPdffTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();
  }
}
