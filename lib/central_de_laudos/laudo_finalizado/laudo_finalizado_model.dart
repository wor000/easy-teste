import '/dashboard_elementos_gerais/informacoes_pessoais/informacoes_pessoais_widget.dart';
import '/dashboard_elementos_gerais/logo_boto_home/logo_boto_home_widget.dart';
import '/dashboard_elementos_gerais/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'laudo_finalizado_widget.dart' show LaudoFinalizadoWidget;
import 'package:flutter/material.dart';

class LaudoFinalizadoModel extends FlutterFlowModel<LaudoFinalizadoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Informacoes_Pessoais component.
  late InformacoesPessoaisModel informacoesPessoaisModel1;
  // Model for menu component.
  late MenuModel menuModel1;
  // Model for LogoBotoHome component.
  late LogoBotoHomeModel logoBotoHomeModel;
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
}
