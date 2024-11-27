import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_usuario_popup_widget.dart' show AddUsuarioPopupWidget;
import 'package:flutter/material.dart';

class AddUsuarioPopupModel extends FlutterFlowModel<AddUsuarioPopupWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for InserirEmailUsuario widget.
  FocusNode? inserirEmailUsuarioFocusNode;
  TextEditingController? inserirEmailUsuarioTextController;
  String? Function(BuildContext, String?)?
      inserirEmailUsuarioTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in InserirUsuario widget.
  List<UsersRow>? retornoUser;
  // Stores action output result for [Backend Call - Query Rows] action in InserirUsuario widget.
  List<ConvitesAssinaturasRow>? retornoConvite;
  // Stores action output result for [Backend Call - Query Rows] action in InserirUsuario widget.
  List<UsersRow>? retornoUserLogado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inserirEmailUsuarioFocusNode?.dispose();
    inserirEmailUsuarioTextController?.dispose();
  }
}
