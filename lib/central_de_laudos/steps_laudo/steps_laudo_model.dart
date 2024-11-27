import '/backend/supabase/supabase.dart';
import '/dashboard_elementos_gerais/informacoes_pessoais/informacoes_pessoais_widget.dart';
import '/dashboard_elementos_gerais/logo_boto_home/logo_boto_home_widget.dart';
import '/dashboard_elementos_gerais/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'steps_laudo_widget.dart' show StepsLaudoWidget;
import 'package:flutter/material.dart';

class StepsLaudoModel extends FlutterFlowModel<StepsLaudoWidget> {
  ///  Local state fields for this page.

  List<String> listaImagensLaudo = [];
  void addToListaImagensLaudo(String item) => listaImagensLaudo.add(item);
  void removeFromListaImagensLaudo(String item) =>
      listaImagensLaudo.remove(item);
  void removeAtIndexFromListaImagensLaudo(int index) =>
      listaImagensLaudo.removeAt(index);
  void insertAtIndexInListaImagensLaudo(int index, String item) =>
      listaImagensLaudo.insert(index, item);
  void updateListaImagensLaudoAtIndex(int index, Function(String) updateFn) =>
      listaImagensLaudo[index] = updateFn(listaImagensLaudo[index]);

  String? listaHTML;

  DateTime? data;

  ///  State fields for stateful widgets in this page.

  // Model for Informacoes_Pessoais component.
  late InformacoesPessoaisModel informacoesPessoaisModel1;
  // Model for menu component.
  late MenuModel menuModel1;
  // Model for LogoBotoHome component.
  late LogoBotoHomeModel logoBotoHomeModel;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  LaudosRow? id;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  Completer<List<UsersRow>>? requestCompleter;
  DateTime? datePicked;
  // State field(s) for DropDown-formaPagamento widget.
  String? dropDownFormaPagamentoValue;
  FormFieldController<String>? dropDownFormaPagamentoValueController;
  // State field(s) for RadioButton-TipoPgto widget.
  FormFieldController<String>? radioButtonTipoPgtoValueController;
  // State field(s) for Checkbox-Confirma-Final widget.
  FormFieldController<List<String>>? checkboxConfirmaFinalValueController;
  List<String>? get checkboxConfirmaFinalValues =>
      checkboxConfirmaFinalValueController?.value;
  set checkboxConfirmaFinalValues(List<String>? v) =>
      checkboxConfirmaFinalValueController?.value = v;

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

  String? get radioButtonTipoPgtoValue =>
      radioButtonTipoPgtoValueController?.value;
}
