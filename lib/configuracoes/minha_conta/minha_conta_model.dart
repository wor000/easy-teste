import '/backend/supabase/supabase.dart';
import '/dashboard_elementos_gerais/informacoes_pessoais/informacoes_pessoais_widget.dart';
import '/dashboard_elementos_gerais/logo_boto_home/logo_boto_home_widget.dart';
import '/dashboard_elementos_gerais/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'minha_conta_widget.dart' show MinhaContaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MinhaContaModel extends FlutterFlowModel<MinhaContaWidget> {
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

  Completer<List<UsersRow>>? requestCompleter;
  // State field(s) for Nome_Usuario widget.
  FocusNode? nomeUsuarioFocusNode1;
  TextEditingController? nomeUsuarioTextController1;
  String? Function(BuildContext, String?)? nomeUsuarioTextController1Validator;
  // State field(s) for Email_Usuario widget.
  FocusNode? emailUsuarioFocusNode1;
  TextEditingController? emailUsuarioTextController1;
  String? Function(BuildContext, String?)? emailUsuarioTextController1Validator;
  // State field(s) for Telefone_Usuario widget.
  FocusNode? telefoneUsuarioFocusNode1;
  TextEditingController? telefoneUsuarioTextController1;
  final telefoneUsuarioMask1 = MaskTextInputFormatter(mask: '(##)#####-####');
  String? Function(BuildContext, String?)?
      telefoneUsuarioTextController1Validator;
  // State field(s) for CPF_CNPJ_Usuario widget.
  FocusNode? cPFCNPJUsuarioFocusNode1;
  TextEditingController? cPFCNPJUsuarioTextController1;
  final cPFCNPJUsuarioMask1 = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)?
      cPFCNPJUsuarioTextController1Validator;
  // State field(s) for Status_Associado widget.
  String? statusAssociadoValue;
  FormFieldController<String>? statusAssociadoValueController;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for Nome_Usuario widget.
  FocusNode? nomeUsuarioFocusNode2;
  TextEditingController? nomeUsuarioTextController2;
  String? Function(BuildContext, String?)? nomeUsuarioTextController2Validator;
  // State field(s) for Email_Usuario widget.
  FocusNode? emailUsuarioFocusNode2;
  TextEditingController? emailUsuarioTextController2;
  String? Function(BuildContext, String?)? emailUsuarioTextController2Validator;
  // State field(s) for Telefone_Usuario widget.
  FocusNode? telefoneUsuarioFocusNode2;
  TextEditingController? telefoneUsuarioTextController2;
  final telefoneUsuarioMask2 = MaskTextInputFormatter(mask: '(##)#####-####');
  String? Function(BuildContext, String?)?
      telefoneUsuarioTextController2Validator;
  // State field(s) for CPF_CNPJ_Usuario widget.
  FocusNode? cPFCNPJUsuarioFocusNode2;
  TextEditingController? cPFCNPJUsuarioTextController2;
  final cPFCNPJUsuarioMask2 = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)?
      cPFCNPJUsuarioTextController2Validator;
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
    nomeUsuarioFocusNode1?.dispose();
    nomeUsuarioTextController1?.dispose();

    emailUsuarioFocusNode1?.dispose();
    emailUsuarioTextController1?.dispose();

    telefoneUsuarioFocusNode1?.dispose();
    telefoneUsuarioTextController1?.dispose();

    cPFCNPJUsuarioFocusNode1?.dispose();
    cPFCNPJUsuarioTextController1?.dispose();

    nomeUsuarioFocusNode2?.dispose();
    nomeUsuarioTextController2?.dispose();

    emailUsuarioFocusNode2?.dispose();
    emailUsuarioTextController2?.dispose();

    telefoneUsuarioFocusNode2?.dispose();
    telefoneUsuarioTextController2?.dispose();

    cPFCNPJUsuarioFocusNode2?.dispose();
    cPFCNPJUsuarioTextController2?.dispose();

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
