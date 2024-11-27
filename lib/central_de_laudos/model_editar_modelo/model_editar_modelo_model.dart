import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'model_editar_modelo_widget.dart' show ModelEditarModeloWidget;
import 'package:flutter/material.dart';

class ModelEditarModeloModel extends FlutterFlowModel<ModelEditarModeloWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField-resumo widget.
  FocusNode? textFieldResumoFocusNode1;
  TextEditingController? textFieldResumoTextController1;
  String? Function(BuildContext, String?)?
      textFieldResumoTextController1Validator;
  String? _textFieldResumoTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField-resumo widget.
  FocusNode? textFieldResumoFocusNode2;
  TextEditingController? textFieldResumoTextController2;
  String? Function(BuildContext, String?)?
      textFieldResumoTextController2Validator;
  String? _textFieldResumoTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DropDown-categoria widget.
  String? dropDownCategoriaValue;
  FormFieldController<String>? dropDownCategoriaValueController;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<LaudosModelosRow>? outEditarModelo;

  @override
  void initState(BuildContext context) {
    textFieldResumoTextController1Validator =
        _textFieldResumoTextController1Validator;
    textFieldResumoTextController2Validator =
        _textFieldResumoTextController2Validator;
  }

  @override
  void dispose() {
    textFieldResumoFocusNode1?.dispose();
    textFieldResumoTextController1?.dispose();

    textFieldResumoFocusNode2?.dispose();
    textFieldResumoTextController2?.dispose();
  }
}
