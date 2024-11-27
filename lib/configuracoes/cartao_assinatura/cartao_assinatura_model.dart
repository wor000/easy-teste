import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/dashboard_elementos_gerais/logo_boto_home/logo_boto_home_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cartao_assinatura_widget.dart' show CartaoAssinaturaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CartaoAssinaturaModel extends FlutterFlowModel<CartaoAssinaturaWidget> {
  ///  Local state fields for this page.

  String? urlPagamento;

  ///  State fields for stateful widgets in this page.

  // Model for LogoBotoHome component.
  late LogoBotoHomeModel logoBotoHomeModel;
  // State field(s) for input-cpfCNPJ widget.
  FocusNode? inputCpfCNPJFocusNode;
  TextEditingController? inputCpfCNPJTextController;
  final inputCpfCNPJMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? inputCpfCNPJTextControllerValidator;
  // State field(s) for input-telefone widget.
  FocusNode? inputTelefoneFocusNode1;
  TextEditingController? inputTelefoneTextController1;
  final inputTelefoneMask1 = MaskTextInputFormatter(mask: '(##) # #### - ####');
  String? Function(BuildContext, String?)?
      inputTelefoneTextController1Validator;
  // State field(s) for input-cep widget.
  FocusNode? inputCepFocusNode;
  TextEditingController? inputCepTextController;
  final inputCepMask = MaskTextInputFormatter(mask: '#####-####');
  String? Function(BuildContext, String?)? inputCepTextControllerValidator;
  // Stores action output result for [Backend Call - API (Busca CEP)] action in Icon-SearchCEP widget.
  ApiCallResponse? cepRetorno;
  // State field(s) for input-endereco widget.
  FocusNode? inputEnderecoFocusNode;
  TextEditingController? inputEnderecoTextController;
  String? Function(BuildContext, String?)? inputEnderecoTextControllerValidator;
  // State field(s) for input-numero widget.
  FocusNode? inputNumeroFocusNode;
  TextEditingController? inputNumeroTextController;
  String? Function(BuildContext, String?)? inputNumeroTextControllerValidator;
  // State field(s) for input-telefone widget.
  FocusNode? inputTelefoneFocusNode2;
  TextEditingController? inputTelefoneTextController2;
  final inputTelefoneMask2 = MaskTextInputFormatter(mask: '(##) # #### - ####');
  String? Function(BuildContext, String?)?
      inputTelefoneTextController2Validator;
  // State field(s) for input-cidade widget.
  FocusNode? inputCidadeFocusNode;
  TextEditingController? inputCidadeTextController;
  String? Function(BuildContext, String?)? inputCidadeTextControllerValidator;
  // State field(s) for input-estado widget.
  FocusNode? inputEstadoFocusNode;
  TextEditingController? inputEstadoTextController;
  String? Function(BuildContext, String?)? inputEstadoTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController10;
  final textFieldMask2 = MaskTextInputFormatter(mask: '#### #### #### ####');
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? retornoUser;
  // Stores action output result for [Backend Call - API (CLIENTE ASAAS)] action in Button widget.
  ApiCallResponse? retornoAsaas;
  // Stores action output result for [Backend Call - API (GET IP)] action in Button widget.
  ApiCallResponse? ipDispositivo;
  // Stores action output result for [Backend Call - API (TOKEN CARTAO DE CREDITO)] action in Button widget.
  ApiCallResponse? tokenCartao;
  // Stores action output result for [Backend Call - API (CRIA ASSINATURA)] action in Button widget.
  ApiCallResponse? criaAssinatura;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  AssinaturasRow? assinaturaCriada;

  @override
  void initState(BuildContext context) {
    logoBotoHomeModel = createModel(context, () => LogoBotoHomeModel());
  }

  @override
  void dispose() {
    logoBotoHomeModel.dispose();
    inputCpfCNPJFocusNode?.dispose();
    inputCpfCNPJTextController?.dispose();

    inputTelefoneFocusNode1?.dispose();
    inputTelefoneTextController1?.dispose();

    inputCepFocusNode?.dispose();
    inputCepTextController?.dispose();

    inputEnderecoFocusNode?.dispose();
    inputEnderecoTextController?.dispose();

    inputNumeroFocusNode?.dispose();
    inputNumeroTextController?.dispose();

    inputTelefoneFocusNode2?.dispose();
    inputTelefoneTextController2?.dispose();

    inputCidadeFocusNode?.dispose();
    inputCidadeTextController?.dispose();

    inputEstadoFocusNode?.dispose();
    inputEstadoTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController9?.dispose();

    textFieldFocusNode2?.dispose();
    textController10?.dispose();

    textFieldFocusNode3?.dispose();
    textController11?.dispose();

    textFieldFocusNode4?.dispose();
    textController12?.dispose();

    textFieldFocusNode5?.dispose();
    textController13?.dispose();
  }
}
