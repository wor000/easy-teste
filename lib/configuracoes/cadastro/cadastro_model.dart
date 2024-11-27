import '/flutter_flow/flutter_flow_util.dart';
import 'cadastro_widget.dart' show CadastroWidget;
import 'package:flutter/material.dart';

class CadastroModel extends FlutterFlowModel<CadastroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  // State field(s) for confirmaSenha widget.
  FocusNode? confirmaSenhaFocusNode;
  TextEditingController? confirmaSenhaTextController;
  late bool confirmaSenhaVisibility;
  String? Function(BuildContext, String?)? confirmaSenhaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaVisibility = false;
    confirmaSenhaVisibility = false;
  }

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();

    confirmaSenhaFocusNode?.dispose();
    confirmaSenhaTextController?.dispose();
  }
}
