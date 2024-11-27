import '/backend/supabase/supabase.dart';
import '/dashboard_elementos_gerais/informacoes_pessoais/informacoes_pessoais_widget.dart';
import '/dashboard_elementos_gerais/logo_boto_home/logo_boto_home_widget.dart';
import '/dashboard_elementos_gerais/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'laudos_concluidos_widget.dart' show LaudosConcluidosWidget;
import 'package:flutter/material.dart';

class LaudosConcluidosModel extends FlutterFlowModel<LaudosConcluidosWidget> {
  ///  Local state fields for this page.

  List<LaudosDetalhadosRow> laudosDetalhes = [];
  void addToLaudosDetalhes(LaudosDetalhadosRow item) =>
      laudosDetalhes.add(item);
  void removeFromLaudosDetalhes(LaudosDetalhadosRow item) =>
      laudosDetalhes.remove(item);
  void removeAtIndexFromLaudosDetalhes(int index) =>
      laudosDetalhes.removeAt(index);
  void insertAtIndexInLaudosDetalhes(int index, LaudosDetalhadosRow item) =>
      laudosDetalhes.insert(index, item);
  void updateLaudosDetalhesAtIndex(
          int index, Function(LaudosDetalhadosRow) updateFn) =>
      laudosDetalhes[index] = updateFn(laudosDetalhes[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Laudos_Concluidos widget.
  List<LaudosDetalhadosRow>? laudosResut;
  // Model for Informacoes_Pessoais component.
  late InformacoesPessoaisModel informacoesPessoaisModel1;
  // Model for menu component.
  late MenuModel menuModel1;
  // Model for Informacoes_Pessoais component.
  late InformacoesPessoaisModel informacoesPessoaisModel2;
  // Model for menu component.
  late MenuModel menuModel2;
  // Model for LogoBotoHome component.
  late LogoBotoHomeModel logoBotoHomeModel;
  // State field(s) for input-Paciente widget.
  FocusNode? inputPacienteFocusNode;
  TextEditingController? inputPacienteTextController;
  String? Function(BuildContext, String?)? inputPacienteTextControllerValidator;
  List<String> simpleSearchResults = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<LaudosDetalhadosRow>();

  @override
  void initState(BuildContext context) {
    informacoesPessoaisModel1 =
        createModel(context, () => InformacoesPessoaisModel());
    menuModel1 = createModel(context, () => MenuModel());
    informacoesPessoaisModel2 =
        createModel(context, () => InformacoesPessoaisModel());
    menuModel2 = createModel(context, () => MenuModel());
    logoBotoHomeModel = createModel(context, () => LogoBotoHomeModel());
  }

  @override
  void dispose() {
    informacoesPessoaisModel1.dispose();
    menuModel1.dispose();
    informacoesPessoaisModel2.dispose();
    menuModel2.dispose();
    logoBotoHomeModel.dispose();
    inputPacienteFocusNode?.dispose();
    inputPacienteTextController?.dispose();

    paginatedDataTableController.dispose();
  }
}
