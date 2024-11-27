import '/backend/supabase/supabase.dart';
import '/dashboard_elementos_gerais/informacoes_pessoais/informacoes_pessoais_widget.dart';
import '/dashboard_elementos_gerais/logo_boto_home/logo_boto_home_widget.dart';
import '/dashboard_elementos_gerais/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'novo_laudo_widget.dart' show NovoLaudoWidget;
import 'package:flutter/material.dart';

class NovoLaudoModel extends FlutterFlowModel<NovoLaudoWidget> {
  ///  Local state fields for this page.

  bool visualizarDadosLaudo = false;

  bool laudoClicavel = false;

  bool laudoPadrao = false;

  bool boolModeloLaudo = false;

  int? idTutor;

  String? pacienteNome;

  String? pacienteTipo;

  String? responsavelNome;

  bool booLLaudoClicavel = false;

  bool boolModeloMeusLaudos = false;

  String? especie;

  String? raca;

  String? idade;

  String? clinica;

  String? veterinario;

  int? idPaciente;

  int? idVeterinario;

  int? idClinica;

  ///  State fields for stateful widgets in this page.

  // Model for Informacoes_Pessoais component.
  late InformacoesPessoaisModel informacoesPessoaisModel1;
  // Model for menu component.
  late MenuModel menuModel1;
  // Model for LogoBotoHome component.
  late LogoBotoHomeModel logoBotoHomeModel;
  // State field(s) for Dropown_Responsavel widget.
  String? dropownResponsavelValue;
  FormFieldController<String>? dropownResponsavelValueController;
  // State field(s) for Dropdrown-paciente widget.
  int? dropdrownPacienteValue;
  FormFieldController<int>? dropdrownPacienteValueController;
  // Stores action output result for [Backend Call - Query Rows] action in Dropdrown-paciente widget.
  List<PetsViewRow>? resutadoPet;
  // State field(s) for Dropdown_veterinario widget.
  int? dropdownVeterinarioValue;
  FormFieldController<int>? dropdownVeterinarioValueController;
  // State field(s) for Dropdown_clinica widget.
  int? dropdownClinicaValue;
  FormFieldController<int>? dropdownClinicaValueController;
  // State field(s) for mr_laudoclicavel widget.
  bool mrLaudoclicavelHovered = false;
  // State field(s) for mr_modelo_laudo widget.
  bool mrModeloLaudoHovered = false;
  // State field(s) for mr_meus_laudos widget.
  bool mrMeusLaudosHovered = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<LaudosModelosRow>();
  // Model for Informacoes_Pessoais component.
  late InformacoesPessoaisModel informacoesPessoaisModel2;
  // Model for menu component.
  late MenuModel menuModel2;

  @override
  void initState(BuildContext context) {
    informacoesPessoaisModel1 =
        createModel(context, () => InformacoesPessoaisModel());
    menuModel1 = createModel(context, () => MenuModel());
    logoBotoHomeModel = createModel(context, () => LogoBotoHomeModel());
    informacoesPessoaisModel2 =
        createModel(context, () => InformacoesPessoaisModel());
    menuModel2 = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    informacoesPessoaisModel1.dispose();
    menuModel1.dispose();
    logoBotoHomeModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    paginatedDataTableController.dispose();
    informacoesPessoaisModel2.dispose();
    menuModel2.dispose();
  }
}
