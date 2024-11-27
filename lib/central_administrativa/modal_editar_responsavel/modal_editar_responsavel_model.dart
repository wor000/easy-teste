import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_editar_responsavel_widget.dart' show ModalEditarResponsavelWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ModalEditarResponsavelModel
    extends FlutterFlowModel<ModalEditarResponsavelWidget> {
  ///  Local state fields for this component.

  String logradouro = ' ';

  String bairro = ' ';

  String cidade = ' ';

  String uf = ' ';

  ///  State fields for stateful widgets in this component.

  // State field(s) for input-nome-tutor widget.
  FocusNode? inputNomeTutorFocusNode1;
  TextEditingController? inputNomeTutorTextController1;
  String? Function(BuildContext, String?)?
      inputNomeTutorTextController1Validator;
  // State field(s) for input-cpf-tutor widget.
  FocusNode? inputCpfTutorFocusNode1;
  TextEditingController? inputCpfTutorTextController1;
  final inputCpfTutorMask1 = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)?
      inputCpfTutorTextController1Validator;
  // State field(s) for input-email-tutor widget.
  FocusNode? inputEmailTutorFocusNode1;
  TextEditingController? inputEmailTutorTextController1;
  String? Function(BuildContext, String?)?
      inputEmailTutorTextController1Validator;
  // State field(s) for input-telefone-tutor widget.
  FocusNode? inputTelefoneTutorFocusNode1;
  TextEditingController? inputTelefoneTutorTextController1;
  final inputTelefoneTutorMask1 =
      MaskTextInputFormatter(mask: '(##) # ####-####');
  String? Function(BuildContext, String?)?
      inputTelefoneTutorTextController1Validator;
  // State field(s) for input-cep widget.
  FocusNode? inputCepFocusNode1;
  TextEditingController? inputCepTextController1;
  final inputCepMask1 = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? inputCepTextController1Validator;
  // Stores action output result for [Backend Call - API (Busca CEP)] action in Icon widget.
  ApiCallResponse? retornoCEP;
  // State field(s) for input-rua widget.
  FocusNode? inputRuaFocusNode1;
  TextEditingController? inputRuaTextController1;
  String? Function(BuildContext, String?)? inputRuaTextController1Validator;
  // State field(s) for input-numero widget.
  FocusNode? inputNumeroFocusNode1;
  TextEditingController? inputNumeroTextController1;
  String? Function(BuildContext, String?)? inputNumeroTextController1Validator;
  // State field(s) for input-bairro widget.
  FocusNode? inputBairroFocusNode1;
  TextEditingController? inputBairroTextController1;
  String? Function(BuildContext, String?)? inputBairroTextController1Validator;
  // State field(s) for input-cidade widget.
  FocusNode? inputCidadeFocusNode1;
  TextEditingController? inputCidadeTextController1;
  String? Function(BuildContext, String?)? inputCidadeTextController1Validator;
  // State field(s) for input-uf widget.
  FocusNode? inputUfFocusNode1;
  TextEditingController? inputUfTextController1;
  String? Function(BuildContext, String?)? inputUfTextController1Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<PetsRow>();
  // State field(s) for input-nome-tutor widget.
  FocusNode? inputNomeTutorFocusNode2;
  TextEditingController? inputNomeTutorTextController2;
  String? Function(BuildContext, String?)?
      inputNomeTutorTextController2Validator;
  // State field(s) for input-cpf-tutor widget.
  FocusNode? inputCpfTutorFocusNode2;
  TextEditingController? inputCpfTutorTextController2;
  final inputCpfTutorMask2 = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)?
      inputCpfTutorTextController2Validator;
  // State field(s) for input-email-tutor widget.
  FocusNode? inputEmailTutorFocusNode2;
  TextEditingController? inputEmailTutorTextController2;
  String? Function(BuildContext, String?)?
      inputEmailTutorTextController2Validator;
  // State field(s) for input-telefone-tutor widget.
  FocusNode? inputTelefoneTutorFocusNode2;
  TextEditingController? inputTelefoneTutorTextController2;
  final inputTelefoneTutorMask2 =
      MaskTextInputFormatter(mask: '(##) # ####-####');
  String? Function(BuildContext, String?)?
      inputTelefoneTutorTextController2Validator;
  // State field(s) for input-cep widget.
  FocusNode? inputCepFocusNode2;
  TextEditingController? inputCepTextController2;
  final inputCepMask2 = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? inputCepTextController2Validator;
  // Stores action output result for [Backend Call - API (Busca CEP)] action in Icon widget.
  ApiCallResponse? retornoCEPMobile;
  // State field(s) for input-rua widget.
  FocusNode? inputRuaFocusNode2;
  TextEditingController? inputRuaTextController2;
  String? Function(BuildContext, String?)? inputRuaTextController2Validator;
  // State field(s) for input-numero widget.
  FocusNode? inputNumeroFocusNode2;
  TextEditingController? inputNumeroTextController2;
  String? Function(BuildContext, String?)? inputNumeroTextController2Validator;
  // State field(s) for input-bairro widget.
  FocusNode? inputBairroFocusNode2;
  TextEditingController? inputBairroTextController2;
  String? Function(BuildContext, String?)? inputBairroTextController2Validator;
  // State field(s) for input-cidade widget.
  FocusNode? inputCidadeFocusNode2;
  TextEditingController? inputCidadeTextController2;
  String? Function(BuildContext, String?)? inputCidadeTextController2Validator;
  // State field(s) for input-uf widget.
  FocusNode? inputUfFocusNode2;
  TextEditingController? inputUfTextController2;
  String? Function(BuildContext, String?)? inputUfTextController2Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<PetsRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputNomeTutorFocusNode1?.dispose();
    inputNomeTutorTextController1?.dispose();

    inputCpfTutorFocusNode1?.dispose();
    inputCpfTutorTextController1?.dispose();

    inputEmailTutorFocusNode1?.dispose();
    inputEmailTutorTextController1?.dispose();

    inputTelefoneTutorFocusNode1?.dispose();
    inputTelefoneTutorTextController1?.dispose();

    inputCepFocusNode1?.dispose();
    inputCepTextController1?.dispose();

    inputRuaFocusNode1?.dispose();
    inputRuaTextController1?.dispose();

    inputNumeroFocusNode1?.dispose();
    inputNumeroTextController1?.dispose();

    inputBairroFocusNode1?.dispose();
    inputBairroTextController1?.dispose();

    inputCidadeFocusNode1?.dispose();
    inputCidadeTextController1?.dispose();

    inputUfFocusNode1?.dispose();
    inputUfTextController1?.dispose();

    paginatedDataTableController1.dispose();
    inputNomeTutorFocusNode2?.dispose();
    inputNomeTutorTextController2?.dispose();

    inputCpfTutorFocusNode2?.dispose();
    inputCpfTutorTextController2?.dispose();

    inputEmailTutorFocusNode2?.dispose();
    inputEmailTutorTextController2?.dispose();

    inputTelefoneTutorFocusNode2?.dispose();
    inputTelefoneTutorTextController2?.dispose();

    inputCepFocusNode2?.dispose();
    inputCepTextController2?.dispose();

    inputRuaFocusNode2?.dispose();
    inputRuaTextController2?.dispose();

    inputNumeroFocusNode2?.dispose();
    inputNumeroTextController2?.dispose();

    inputBairroFocusNode2?.dispose();
    inputBairroTextController2?.dispose();

    inputCidadeFocusNode2?.dispose();
    inputCidadeTextController2?.dispose();

    inputUfFocusNode2?.dispose();
    inputUfTextController2?.dispose();

    paginatedDataTableController2.dispose();
  }
}
