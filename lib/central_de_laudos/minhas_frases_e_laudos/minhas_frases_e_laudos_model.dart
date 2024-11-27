import '/backend/supabase/supabase.dart';
import '/dashboard_elementos_gerais/informacoes_pessoais/informacoes_pessoais_widget.dart';
import '/dashboard_elementos_gerais/logo_boto_home/logo_boto_home_widget.dart';
import '/dashboard_elementos_gerais/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'minhas_frases_e_laudos_widget.dart' show MinhasFrasesELaudosWidget;
import 'package:flutter/material.dart';

class MinhasFrasesELaudosModel
    extends FlutterFlowModel<MinhasFrasesELaudosWidget> {
  ///  Local state fields for this page.

  bool visualizarDadosLaudo = false;

  bool laudoClicavel = false;

  bool laudoPadrao = false;

  bool personalizarBexiga = false;

  String? selectedButton = '';

  String? buscaFrase;

  List<LaudosModelosRow> listaModelos = [];
  void addToListaModelos(LaudosModelosRow item) => listaModelos.add(item);
  void removeFromListaModelos(LaudosModelosRow item) =>
      listaModelos.remove(item);
  void removeAtIndexFromListaModelos(int index) => listaModelos.removeAt(index);
  void insertAtIndexInListaModelos(int index, LaudosModelosRow item) =>
      listaModelos.insert(index, item);
  void updateListaModelosAtIndex(
          int index, Function(LaudosModelosRow) updateFn) =>
      listaModelos[index] = updateFn(listaModelos[index]);

  List<FrasesRow> listaFrases = [];
  void addToListaFrases(FrasesRow item) => listaFrases.add(item);
  void removeFromListaFrases(FrasesRow item) => listaFrases.remove(item);
  void removeAtIndexFromListaFrases(int index) => listaFrases.removeAt(index);
  void insertAtIndexInListaFrases(int index, FrasesRow item) =>
      listaFrases.insert(index, item);
  void updateListaFrasesAtIndex(int index, Function(FrasesRow) updateFn) =>
      listaFrases[index] = updateFn(listaFrases[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Minhas_Frases_e_Laudos widget.
  List<LaudosModelosRow>? allModelos;
  // Stores action output result for [Backend Call - Query Rows] action in Minhas_Frases_e_Laudos widget.
  List<FrasesRow>? allFrases;
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
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField_frase widget.
  FocusNode? textFieldFraseFocusNode;
  TextEditingController? textFieldFraseTextController;
  String? Function(BuildContext, String?)?
      textFieldFraseTextControllerValidator;
  List<String> simpleSearchResults1 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<FrasesRow>();
  // State field(s) for TextField_modelos widget.
  FocusNode? textFieldModelosFocusNode;
  TextEditingController? textFieldModelosTextController;
  String? Function(BuildContext, String?)?
      textFieldModelosTextControllerValidator;
  List<String> simpleSearchResults2 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<LaudosModelosRow>();

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
    tabBarController?.dispose();
    textFieldFraseFocusNode?.dispose();
    textFieldFraseTextController?.dispose();

    paginatedDataTableController1.dispose();
    textFieldModelosFocusNode?.dispose();
    textFieldModelosTextController?.dispose();

    paginatedDataTableController2.dispose();
  }
}
