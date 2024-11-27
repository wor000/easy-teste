import '/backend/supabase/supabase.dart';
import '/dashboard_elementos_gerais/informacoes_pessoais/informacoes_pessoais_widget.dart';
import '/dashboard_elementos_gerais/logo_boto_home/logo_boto_home_widget.dart';
import '/dashboard_elementos_gerais/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'layout_laudo_widget.dart' show LayoutLaudoWidget;
import 'package:flutter/material.dart';

class LayoutLaudoModel extends FlutterFlowModel<LayoutLaudoWidget> {
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
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Column widget.
  List<UsersRow>? apiResultAttMarca;
  // State field(s) for input-nomeClinica widget.
  FocusNode? inputNomeClinicaFocusNode;
  TextEditingController? inputNomeClinicaTextController;
  String? Function(BuildContext, String?)?
      inputNomeClinicaTextControllerValidator;
  // State field(s) for input-DadosClinica widget.
  FocusNode? inputDadosClinicaFocusNode;
  TextEditingController? inputDadosClinicaTextController;
  String? Function(BuildContext, String?)?
      inputDadosClinicaTextControllerValidator;
  // State field(s) for input-RedeSocial widget.
  FocusNode? inputRedeSocialFocusNode;
  TextEditingController? inputRedeSocialTextController;
  String? Function(BuildContext, String?)?
      inputRedeSocialTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<UsersRow>? apiResulDados;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Column widget.
  List<UsersRow>? apiResultAttAssinatura;
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
    inputNomeClinicaFocusNode?.dispose();
    inputNomeClinicaTextController?.dispose();

    inputDadosClinicaFocusNode?.dispose();
    inputDadosClinicaTextController?.dispose();

    inputRedeSocialFocusNode?.dispose();
    inputRedeSocialTextController?.dispose();

    informacoesPessoaisModel2.dispose();
    menuModel2.dispose();
  }
}
