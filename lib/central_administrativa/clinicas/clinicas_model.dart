import '/backend/supabase/supabase.dart';
import '/dashboard_elementos_gerais/informacoes_pessoais/informacoes_pessoais_widget.dart';
import '/dashboard_elementos_gerais/logo_boto_home/logo_boto_home_widget.dart';
import '/dashboard_elementos_gerais/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'clinicas_widget.dart' show ClinicasWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class ClinicasModel extends FlutterFlowModel<ClinicasWidget> {
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

  ///  State fields for stateful widgets in this page.

  // Model for Informacoes_Pessoais component.
  late InformacoesPessoaisModel informacoesPessoaisModel1;
  // Model for menu component.
  late MenuModel menuModel1;
  // Model for LogoBotoHome component.
  late LogoBotoHomeModel logoBotoHomeModel;
  // State field(s) for input-pesquisar-clinica widget.
  FocusNode? inputPesquisarClinicaFocusNode1;
  TextEditingController? inputPesquisarClinicaTextController1;
  String? Function(BuildContext, String?)?
      inputPesquisarClinicaTextController1Validator;
  // State field(s) for input-pesquisar-clinica widget.
  FocusNode? inputPesquisarClinicaFocusNode2;
  TextEditingController? inputPesquisarClinicaTextController2;
  String? Function(BuildContext, String?)?
      inputPesquisarClinicaTextController2Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ClinicasRow>();
  Completer<List<ClinicasRow>>? requestCompleter;
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
    inputPesquisarClinicaFocusNode1?.dispose();
    inputPesquisarClinicaTextController1?.dispose();

    inputPesquisarClinicaFocusNode2?.dispose();
    inputPesquisarClinicaTextController2?.dispose();

    paginatedDataTableController.dispose();
    informacoesPessoaisModel2.dispose();
    menuModel2.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
