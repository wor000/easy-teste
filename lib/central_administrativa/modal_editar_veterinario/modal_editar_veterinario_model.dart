import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_editar_veterinario_widget.dart' show ModalEditarVeterinarioWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ModalEditarVeterinarioModel
    extends FlutterFlowModel<ModalEditarVeterinarioWidget> {
  ///  Local state fields for this component.

  String logradouro = ' ';

  String cidade = ' ';

  String bairro = ' ';

  String uf = ' ';

  ///  State fields for stateful widgets in this component.

  // State field(s) for input-nome-veterinario widget.
  FocusNode? inputNomeVeterinarioFocusNode1;
  TextEditingController? inputNomeVeterinarioTextController1;
  String? Function(BuildContext, String?)?
      inputNomeVeterinarioTextController1Validator;
  // State field(s) for input-cpf-veterinario widget.
  FocusNode? inputCpfVeterinarioFocusNode1;
  TextEditingController? inputCpfVeterinarioTextController1;
  final inputCpfVeterinarioMask1 =
      MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)?
      inputCpfVeterinarioTextController1Validator;
  // State field(s) for input-crmv-veterinario widget.
  FocusNode? inputCrmvVeterinarioFocusNode1;
  TextEditingController? inputCrmvVeterinarioTextController1;
  final inputCrmvVeterinarioMask1 = MaskTextInputFormatter(mask: '####/#');
  String? Function(BuildContext, String?)?
      inputCrmvVeterinarioTextController1Validator;
  // State field(s) for input-email-veterinario widget.
  FocusNode? inputEmailVeterinarioFocusNode1;
  TextEditingController? inputEmailVeterinarioTextController1;
  String? Function(BuildContext, String?)?
      inputEmailVeterinarioTextController1Validator;
  // State field(s) for input-telefone-veterinario widget.
  FocusNode? inputTelefoneVeterinarioFocusNode1;
  TextEditingController? inputTelefoneVeterinarioTextController1;
  final inputTelefoneVeterinarioMask1 =
      MaskTextInputFormatter(mask: '(##) # ####-####');
  String? Function(BuildContext, String?)?
      inputTelefoneVeterinarioTextController1Validator;
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
  // State field(s) for input-nome-veterinario widget.
  FocusNode? inputNomeVeterinarioFocusNode2;
  TextEditingController? inputNomeVeterinarioTextController2;
  String? Function(BuildContext, String?)?
      inputNomeVeterinarioTextController2Validator;
  // State field(s) for input-cpf-veterinario widget.
  FocusNode? inputCpfVeterinarioFocusNode2;
  TextEditingController? inputCpfVeterinarioTextController2;
  final inputCpfVeterinarioMask2 =
      MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)?
      inputCpfVeterinarioTextController2Validator;
  // State field(s) for input-crmv-veterinario widget.
  FocusNode? inputCrmvVeterinarioFocusNode2;
  TextEditingController? inputCrmvVeterinarioTextController2;
  final inputCrmvVeterinarioMask2 = MaskTextInputFormatter(mask: '####/#');
  String? Function(BuildContext, String?)?
      inputCrmvVeterinarioTextController2Validator;
  // State field(s) for input-email-veterinario widget.
  FocusNode? inputEmailVeterinarioFocusNode2;
  TextEditingController? inputEmailVeterinarioTextController2;
  String? Function(BuildContext, String?)?
      inputEmailVeterinarioTextController2Validator;
  // State field(s) for input-telefone-veterinario widget.
  FocusNode? inputTelefoneVeterinarioFocusNode2;
  TextEditingController? inputTelefoneVeterinarioTextController2;
  final inputTelefoneVeterinarioMask2 =
      MaskTextInputFormatter(mask: '(##) # ####-####');
  String? Function(BuildContext, String?)?
      inputTelefoneVeterinarioTextController2Validator;
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
    inputNomeVeterinarioFocusNode1?.dispose();
    inputNomeVeterinarioTextController1?.dispose();

    inputCpfVeterinarioFocusNode1?.dispose();
    inputCpfVeterinarioTextController1?.dispose();

    inputCrmvVeterinarioFocusNode1?.dispose();
    inputCrmvVeterinarioTextController1?.dispose();

    inputEmailVeterinarioFocusNode1?.dispose();
    inputEmailVeterinarioTextController1?.dispose();

    inputTelefoneVeterinarioFocusNode1?.dispose();
    inputTelefoneVeterinarioTextController1?.dispose();

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

    inputNomeVeterinarioFocusNode2?.dispose();
    inputNomeVeterinarioTextController2?.dispose();

    inputCpfVeterinarioFocusNode2?.dispose();
    inputCpfVeterinarioTextController2?.dispose();

    inputCrmvVeterinarioFocusNode2?.dispose();
    inputCrmvVeterinarioTextController2?.dispose();

    inputEmailVeterinarioFocusNode2?.dispose();
    inputEmailVeterinarioTextController2?.dispose();

    inputTelefoneVeterinarioFocusNode2?.dispose();
    inputTelefoneVeterinarioTextController2?.dispose();

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
