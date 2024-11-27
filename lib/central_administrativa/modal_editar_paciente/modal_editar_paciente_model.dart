import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_editar_paciente_widget.dart' show ModalEditarPacienteWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ModalEditarPacienteModel
    extends FlutterFlowModel<ModalEditarPacienteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for input-selecionar-responsavel widget.
  int? inputSelecionarResponsavelValue1;
  FormFieldController<int>? inputSelecionarResponsavelValueController1;
  // State field(s) for input-nome-paciente widget.
  FocusNode? inputNomePacienteFocusNode1;
  TextEditingController? inputNomePacienteTextController1;
  String? Function(BuildContext, String?)?
      inputNomePacienteTextController1Validator;
  // State field(s) for input-especie-paciente widget.
  FocusNode? inputEspeciePacienteFocusNode1;
  TextEditingController? inputEspeciePacienteTextController1;
  String? Function(BuildContext, String?)?
      inputEspeciePacienteTextController1Validator;
  // State field(s) for input-selecionar-raca-paciente widget.
  int? inputSelecionarRacaPacienteValue1;
  FormFieldController<int>? inputSelecionarRacaPacienteValueController1;
  // State field(s) for input-ano-nascimento-paciente widget.
  FocusNode? inputAnoNascimentoPacienteFocusNode1;
  TextEditingController? inputAnoNascimentoPacienteTextController1;
  final inputAnoNascimentoPacienteMask1 =
      MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      inputAnoNascimentoPacienteTextController1Validator;
  // State field(s) for input-peso-paciente widget.
  FocusNode? inputPesoPacienteFocusNode1;
  TextEditingController? inputPesoPacienteTextController1;
  String? Function(BuildContext, String?)?
      inputPesoPacienteTextController1Validator;
  // State field(s) for input-selecionar-sexo-paciente widget.
  String? inputSelecionarSexoPacienteValue1;
  FormFieldController<String>? inputSelecionarSexoPacienteValueController1;
  // State field(s) for input-selecionar-responsavel widget.
  int? inputSelecionarResponsavelValue2;
  FormFieldController<int>? inputSelecionarResponsavelValueController2;
  // State field(s) for input-nome-paciente widget.
  FocusNode? inputNomePacienteFocusNode2;
  TextEditingController? inputNomePacienteTextController2;
  String? Function(BuildContext, String?)?
      inputNomePacienteTextController2Validator;
  // State field(s) for input-especie-paciente widget.
  FocusNode? inputEspeciePacienteFocusNode2;
  TextEditingController? inputEspeciePacienteTextController2;
  String? Function(BuildContext, String?)?
      inputEspeciePacienteTextController2Validator;
  // State field(s) for input-selecionar-raca-paciente widget.
  int? inputSelecionarRacaPacienteValue2;
  FormFieldController<int>? inputSelecionarRacaPacienteValueController2;
  // State field(s) for input-ano-nascimento-paciente widget.
  FocusNode? inputAnoNascimentoPacienteFocusNode2;
  TextEditingController? inputAnoNascimentoPacienteTextController2;
  final inputAnoNascimentoPacienteMask2 =
      MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      inputAnoNascimentoPacienteTextController2Validator;
  // State field(s) for input-peso-paciente widget.
  FocusNode? inputPesoPacienteFocusNode2;
  TextEditingController? inputPesoPacienteTextController2;
  String? Function(BuildContext, String?)?
      inputPesoPacienteTextController2Validator;
  // State field(s) for input-selecionar-sexo-paciente widget.
  String? inputSelecionarSexoPacienteValue2;
  FormFieldController<String>? inputSelecionarSexoPacienteValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputNomePacienteFocusNode1?.dispose();
    inputNomePacienteTextController1?.dispose();

    inputEspeciePacienteFocusNode1?.dispose();
    inputEspeciePacienteTextController1?.dispose();

    inputAnoNascimentoPacienteFocusNode1?.dispose();
    inputAnoNascimentoPacienteTextController1?.dispose();

    inputPesoPacienteFocusNode1?.dispose();
    inputPesoPacienteTextController1?.dispose();

    inputNomePacienteFocusNode2?.dispose();
    inputNomePacienteTextController2?.dispose();

    inputEspeciePacienteFocusNode2?.dispose();
    inputEspeciePacienteTextController2?.dispose();

    inputAnoNascimentoPacienteFocusNode2?.dispose();
    inputAnoNascimentoPacienteTextController2?.dispose();

    inputPesoPacienteFocusNode2?.dispose();
    inputPesoPacienteTextController2?.dispose();
  }
}
