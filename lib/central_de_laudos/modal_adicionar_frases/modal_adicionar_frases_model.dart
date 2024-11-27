import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_adicionar_frases_widget.dart' show ModalAdicionarFrasesWidget;
import 'package:flutter/material.dart';

class ModalAdicionarFrasesModel
    extends FlutterFlowModel<ModalAdicionarFrasesWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Nome_Frase widget.
  FocusNode? nomeFraseFocusNode;
  TextEditingController? nomeFraseTextController;
  String? Function(BuildContext, String?)? nomeFraseTextControllerValidator;
  String? _nomeFraseTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nome / Referência é obrigatório';
    }

    return null;
  }

  // State field(s) for Frase widget.
  FocusNode? fraseFocusNode;
  TextEditingController? fraseTextController;
  String? Function(BuildContext, String?)? fraseTextControllerValidator;
  String? _fraseTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Frase é obrigatória';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Button widget.
  bool? sds;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  FrasesRow? outCadstroFrase;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  FrasesRow? outCadstroFraseMobile;

  @override
  void initState(BuildContext context) {
    nomeFraseTextControllerValidator = _nomeFraseTextControllerValidator;
    fraseTextControllerValidator = _fraseTextControllerValidator;
  }

  @override
  void dispose() {
    nomeFraseFocusNode?.dispose();
    nomeFraseTextController?.dispose();

    fraseFocusNode?.dispose();
    fraseTextController?.dispose();
  }
}
