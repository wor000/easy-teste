import '/flutter_flow/flutter_flow_util.dart';
import 'trocar_senha_popup_widget.dart' show TrocarSenhaPopupWidget;
import 'package:flutter/material.dart';

class TrocarSenhaPopupModel extends FlutterFlowModel<TrocarSenhaPopupWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Senha_Atual widget.
  FocusNode? senhaAtualFocusNode;
  TextEditingController? senhaAtualTextController;
  String? Function(BuildContext, String?)? senhaAtualTextControllerValidator;
  // State field(s) for Nova_Senha widget.
  FocusNode? novaSenhaFocusNode;
  TextEditingController? novaSenhaTextController;
  String? Function(BuildContext, String?)? novaSenhaTextControllerValidator;
  // State field(s) for Nova_Senha_Repetir widget.
  FocusNode? novaSenhaRepetirFocusNode;
  TextEditingController? novaSenhaRepetirTextController;
  String? Function(BuildContext, String?)?
      novaSenhaRepetirTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    senhaAtualFocusNode?.dispose();
    senhaAtualTextController?.dispose();

    novaSenhaFocusNode?.dispose();
    novaSenhaTextController?.dispose();

    novaSenhaRepetirFocusNode?.dispose();
    novaSenhaRepetirTextController?.dispose();
  }
}
