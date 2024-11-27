import '/dashboard_elementos_gerais/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_copy_ignorar_widget.dart' show HomePageCopyIgnorarWidget;
import 'package:flutter/material.dart';

class HomePageCopyIgnorarModel
    extends FlutterFlowModel<HomePageCopyIgnorarWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
  }
}
