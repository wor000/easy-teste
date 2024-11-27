import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/dashboard_elementos_gerais/informacoes_pessoais/informacoes_pessoais_widget.dart';
import '/dashboard_elementos_gerais/logo_boto_home/logo_boto_home_widget.dart';
import '/dashboard_elementos_gerais/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'centra_financeira_widget.dart' show CentraFinanceiraWidget;
import 'package:flutter/material.dart';

class CentraFinanceiraModel extends FlutterFlowModel<CentraFinanceiraWidget> {
  ///  Local state fields for this page.

  String? umATopografia = '';

  String? doisReplecao = '';

  String tresAParede = '';

  String? umBPosicao = '';

  String? tresBEspessura = '';

  String? tresCLocalizacaodaLesao = '';

  String? quatroConteudo = '';

  String? cincoCalculosUrolitiaseseCoagulos = '';

  String? cincoAImagem = '';

  String? cincoBContornoSuperficie = '';

  String? cincoCEcogenicidade = '';

  String? cincoDSombra = '';

  String? cincoEMedida = '';

  String? seisAlteracoesUretra = '';

  String? seisAUretra = '';

  String? seisBUretra = '';

  String? seisCUretra = '';

  String? seisDUretra = '';

  String? seisEMedida = '';

  String? seisFMedida = '';

  String? seteImpressaoDiagnostica = '';

  bool visualizarDadosLaudo = false;

  bool laudoClicavel = false;

  bool laudoPadrao = false;

  bool personalizarBexiga = false;

  String? veterinarioId;

  int? idClinica;

  String? naturezaOperacao;

  String? statusPagamento;

  List<LaudosFiltradosStruct> tabelaFiltrada = [];
  void addToTabelaFiltrada(LaudosFiltradosStruct item) =>
      tabelaFiltrada.add(item);
  void removeFromTabelaFiltrada(LaudosFiltradosStruct item) =>
      tabelaFiltrada.remove(item);
  void removeAtIndexFromTabelaFiltrada(int index) =>
      tabelaFiltrada.removeAt(index);
  void insertAtIndexInTabelaFiltrada(int index, LaudosFiltradosStruct item) =>
      tabelaFiltrada.insert(index, item);
  void updateTabelaFiltradaAtIndex(
          int index, Function(LaudosFiltradosStruct) updateFn) =>
      tabelaFiltrada[index] = updateFn(tabelaFiltrada[index]);

  ///  State fields for stateful widgets in this page.

  // Model for Informacoes_Pessoais component.
  late InformacoesPessoaisModel informacoesPessoaisModel1;
  // Model for menu component.
  late MenuModel menuModel1;
  // Model for LogoBotoHome component.
  late LogoBotoHomeModel logoBotoHomeModel;
  // State field(s) for Nome_Parceiro widget.
  int? nomeParceiroValue1;
  FormFieldController<int>? nomeParceiroValueController1;
  // State field(s) for Nome_Clinica widget.
  int? nomeClinicaValue1;
  FormFieldController<int>? nomeClinicaValueController1;
  // State field(s) for Data_Inicio widget.
  FocusNode? dataInicioFocusNode1;
  TextEditingController? dataInicioTextController1;
  String? Function(BuildContext, String?)? dataInicioTextController1Validator;
  // State field(s) for Data_final widget.
  FocusNode? dataFinalFocusNode1;
  TextEditingController? dataFinalTextController1;
  String? Function(BuildContext, String?)? dataFinalTextController1Validator;
  // State field(s) for Natureza_Operacao widget.
  String? naturezaOperacaoValue1;
  FormFieldController<String>? naturezaOperacaoValueController1;
  // State field(s) for Status_Pagamento widget.
  String? statusPagamentoValue1;
  FormFieldController<String>? statusPagamentoValueController1;
  // Stores action output result for [Backend Call - API (Teste Laudos Detalhados)] action in Aplicar_Filtro widget.
  ApiCallResponse? retornoApi;
  // State field(s) for Input_procurar widget.
  FocusNode? inputProcurarFocusNode1;
  TextEditingController? inputProcurarTextController1;
  String? Function(BuildContext, String?)?
      inputProcurarTextController1Validator;
  // State field(s) for tabelaGeral widget.
  final tabelaGeralController =
      FlutterFlowDataTableController<LaudosFiltradosStruct>();
  // State field(s) for Nome_Parceiro widget.
  String? nomeParceiroValue2;
  FormFieldController<String>? nomeParceiroValueController2;
  // State field(s) for Nome_Clinica widget.
  String? nomeClinicaValue2;
  FormFieldController<String>? nomeClinicaValueController2;
  // State field(s) for Data_Inicio widget.
  FocusNode? dataInicioFocusNode2;
  TextEditingController? dataInicioTextController2;
  String? Function(BuildContext, String?)? dataInicioTextController2Validator;
  // State field(s) for Data_final widget.
  FocusNode? dataFinalFocusNode2;
  TextEditingController? dataFinalTextController2;
  String? Function(BuildContext, String?)? dataFinalTextController2Validator;
  // State field(s) for Natureza_Operacao widget.
  String? naturezaOperacaoValue2;
  FormFieldController<String>? naturezaOperacaoValueController2;
  // State field(s) for Status_Pagamento widget.
  String? statusPagamentoValue2;
  FormFieldController<String>? statusPagamentoValueController2;
  // State field(s) for Input_procurar widget.
  FocusNode? inputProcurarFocusNode2;
  TextEditingController? inputProcurarTextController2;
  String? Function(BuildContext, String?)?
      inputProcurarTextController2Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<FinanceiroStruct>();
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
    dataInicioFocusNode1?.dispose();
    dataInicioTextController1?.dispose();

    dataFinalFocusNode1?.dispose();
    dataFinalTextController1?.dispose();

    inputProcurarFocusNode1?.dispose();
    inputProcurarTextController1?.dispose();

    tabelaGeralController.dispose();
    dataInicioFocusNode2?.dispose();
    dataInicioTextController2?.dispose();

    dataFinalFocusNode2?.dispose();
    dataFinalTextController2?.dispose();

    inputProcurarFocusNode2?.dispose();
    inputProcurarTextController2?.dispose();

    paginatedDataTableController.dispose();
    informacoesPessoaisModel2.dispose();
    menuModel2.dispose();
  }
}
