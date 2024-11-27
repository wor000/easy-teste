import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_editar_clinica_widget.dart' show ModalEditarClinicaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ModalEditarClinicaModel
    extends FlutterFlowModel<ModalEditarClinicaWidget> {
  ///  Local state fields for this component.

  String logradouro = ' ';

  String cidade = ' ';

  String uf = ' ';

  String bairro = ' ';

  ///  State fields for stateful widgets in this component.

  // State field(s) for input-nome-clinica widget.
  FocusNode? inputNomeClinicaFocusNode1;
  TextEditingController? inputNomeClinicaTextController1;
  String? Function(BuildContext, String?)?
      inputNomeClinicaTextController1Validator;
  // State field(s) for input-cnpj-clinica widget.
  FocusNode? inputCnpjClinicaFocusNode1;
  TextEditingController? inputCnpjClinicaTextController1;
  final inputCnpjClinicaMask1 =
      MaskTextInputFormatter(mask: '##.###.###/####-##');
  String? Function(BuildContext, String?)?
      inputCnpjClinicaTextController1Validator;
  // State field(s) for input-email-clinica widget.
  FocusNode? inputEmailClinicaFocusNode1;
  TextEditingController? inputEmailClinicaTextController1;
  String? Function(BuildContext, String?)?
      inputEmailClinicaTextController1Validator;
  // State field(s) for input-telefone-clinica widget.
  FocusNode? inputTelefoneClinicaFocusNode1;
  TextEditingController? inputTelefoneClinicaTextController1;
  final inputTelefoneClinicaMask1 =
      MaskTextInputFormatter(mask: '(##) # ####-####');
  String? Function(BuildContext, String?)?
      inputTelefoneClinicaTextController1Validator;
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
  // State field(s) for input-nome-clinica widget.
  FocusNode? inputNomeClinicaFocusNode2;
  TextEditingController? inputNomeClinicaTextController2;
  String? Function(BuildContext, String?)?
      inputNomeClinicaTextController2Validator;
  // State field(s) for input-cnpj-clinica widget.
  FocusNode? inputCnpjClinicaFocusNode2;
  TextEditingController? inputCnpjClinicaTextController2;
  final inputCnpjClinicaMask2 =
      MaskTextInputFormatter(mask: '##.###.###/####-##');
  String? Function(BuildContext, String?)?
      inputCnpjClinicaTextController2Validator;
  // State field(s) for input-email-clinica widget.
  FocusNode? inputEmailClinicaFocusNode2;
  TextEditingController? inputEmailClinicaTextController2;
  String? Function(BuildContext, String?)?
      inputEmailClinicaTextController2Validator;
  // State field(s) for input-telefone-clinica widget.
  FocusNode? inputTelefoneClinicaFocusNode2;
  TextEditingController? inputTelefoneClinicaTextController2;
  final inputTelefoneClinicaMask2 =
      MaskTextInputFormatter(mask: '(##) # ####-####');
  String? Function(BuildContext, String?)?
      inputTelefoneClinicaTextController2Validator;
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputNomeClinicaFocusNode1?.dispose();
    inputNomeClinicaTextController1?.dispose();

    inputCnpjClinicaFocusNode1?.dispose();
    inputCnpjClinicaTextController1?.dispose();

    inputEmailClinicaFocusNode1?.dispose();
    inputEmailClinicaTextController1?.dispose();

    inputTelefoneClinicaFocusNode1?.dispose();
    inputTelefoneClinicaTextController1?.dispose();

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

    inputNomeClinicaFocusNode2?.dispose();
    inputNomeClinicaTextController2?.dispose();

    inputCnpjClinicaFocusNode2?.dispose();
    inputCnpjClinicaTextController2?.dispose();

    inputEmailClinicaFocusNode2?.dispose();
    inputEmailClinicaTextController2?.dispose();

    inputTelefoneClinicaFocusNode2?.dispose();
    inputTelefoneClinicaTextController2?.dispose();

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
  }
}
