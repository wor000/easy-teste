import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'modal_cadastrar_responsavel_model.dart';
export 'modal_cadastrar_responsavel_model.dart';

class ModalCadastrarResponsavelWidget extends StatefulWidget {
  const ModalCadastrarResponsavelWidget({
    super.key,
    required this.totorId,
  });

  final List<TutoresRow>? totorId;

  @override
  State<ModalCadastrarResponsavelWidget> createState() =>
      _ModalCadastrarResponsavelWidgetState();
}

class _ModalCadastrarResponsavelWidgetState
    extends State<ModalCadastrarResponsavelWidget> {
  late ModalCadastrarResponsavelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalCadastrarResponsavelModel());

    _model.inputNomeTutorTextController1 ??= TextEditingController();
    _model.inputNomeTutorFocusNode1 ??= FocusNode();

    _model.inputCpfTutorTextController1 ??= TextEditingController();
    _model.inputCpfTutorFocusNode1 ??= FocusNode();

    _model.inputEmailTutorTextController1 ??= TextEditingController();
    _model.inputEmailTutorFocusNode1 ??= FocusNode();

    _model.inputTelefoneTutorTextController1 ??= TextEditingController();
    _model.inputTelefoneTutorFocusNode1 ??= FocusNode();

    _model.inputCepTextController1 ??= TextEditingController();
    _model.inputCepFocusNode1 ??= FocusNode();

    _model.inputRuaTextController1 ??= TextEditingController();
    _model.inputRuaFocusNode1 ??= FocusNode();

    _model.inputNumeroTextController1 ??= TextEditingController();
    _model.inputNumeroFocusNode1 ??= FocusNode();

    _model.inputBairroTextController1 ??= TextEditingController();
    _model.inputBairroFocusNode1 ??= FocusNode();

    _model.inputCidadeTextController1 ??= TextEditingController();
    _model.inputCidadeFocusNode1 ??= FocusNode();

    _model.inputUfTextController1 ??= TextEditingController();
    _model.inputUfFocusNode1 ??= FocusNode();

    _model.inputNomePacienteTextController1 ??= TextEditingController();
    _model.inputNomePacienteFocusNode1 ??= FocusNode();

    _model.inputEspeciePacienteTextController1 ??= TextEditingController();
    _model.inputEspeciePacienteFocusNode1 ??= FocusNode();

    _model.inputAnoNascimentoPacienteTextController1 ??=
        TextEditingController();
    _model.inputAnoNascimentoPacienteFocusNode1 ??= FocusNode();

    _model.inputPesoPacienteTextController1 ??= TextEditingController();
    _model.inputPesoPacienteFocusNode1 ??= FocusNode();

    _model.inputNomeTutorTextController2 ??= TextEditingController();
    _model.inputNomeTutorFocusNode2 ??= FocusNode();

    _model.inputCpfTutorTextController2 ??= TextEditingController();
    _model.inputCpfTutorFocusNode2 ??= FocusNode();

    _model.inputEmailTutorTextController2 ??= TextEditingController();
    _model.inputEmailTutorFocusNode2 ??= FocusNode();

    _model.inputTelefoneTutorTextController2 ??= TextEditingController();
    _model.inputTelefoneTutorFocusNode2 ??= FocusNode();

    _model.inputCepTextController2 ??= TextEditingController();
    _model.inputCepFocusNode2 ??= FocusNode();

    _model.inputRuaTextController2 ??= TextEditingController();
    _model.inputRuaFocusNode2 ??= FocusNode();

    _model.inputNumeroTextController2 ??= TextEditingController();
    _model.inputNumeroFocusNode2 ??= FocusNode();

    _model.inputBairroTextController2 ??= TextEditingController();
    _model.inputBairroFocusNode2 ??= FocusNode();

    _model.inputCidadeTextController2 ??= TextEditingController();
    _model.inputCidadeFocusNode2 ??= FocusNode();

    _model.inputUfTextController2 ??= TextEditingController();
    _model.inputUfFocusNode2 ??= FocusNode();

    _model.inputNomePacienteTextController2 ??= TextEditingController();
    _model.inputNomePacienteFocusNode2 ??= FocusNode();

    _model.inputEspeciePacienteTextController2 ??= TextEditingController();
    _model.inputEspeciePacienteFocusNode2 ??= FocusNode();

    _model.inputAnoNascimentoPacienteTextController2 ??=
        TextEditingController();
    _model.inputAnoNascimentoPacienteFocusNode2 ??= FocusNode();

    _model.inputPesoPacienteTextController2 ??= TextEditingController();
    _model.inputPesoPacienteFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      constraints: const BoxConstraints(
        minWidth: double.infinity,
        minHeight: double.infinity,
        maxWidth: double.infinity,
        maxHeight: double.infinity,
      ),
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(36.0, 0.0, 36.0, 0.0),
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  constraints: const BoxConstraints(
                    minWidth: 375.0,
                    maxWidth: 900.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 12.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          5.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                        ))
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Cadastrar responsável',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: const Color(
                                                                  0xFFF16712),
                                                              fontSize: 18.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Preencha os dados do responsável',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 44.0,
                                          icon: Icon(
                                            Icons.close_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  StyledDivider(
                                    thickness: 2.0,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    lineStyle: DividerLineStyle.dotted,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 45.0,
                                            decoration: const BoxDecoration(),
                                            child: TextFormField(
                                              controller: _model
                                                  .inputNomeTutorTextController1,
                                              focusNode: _model
                                                  .inputNomeTutorFocusNode1,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Nome completo',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Ex: Maria da Silva',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFFF753F),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 0.0,
                                                            16.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLines: null,
                                              cursorColor: const Color(0xFFFF753F),
                                              validator: _model
                                                  .inputNomeTutorTextController1Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 45.0,
                                            decoration: const BoxDecoration(),
                                            child: TextFormField(
                                              controller: _model
                                                  .inputCpfTutorTextController1,
                                              focusNode: _model
                                                  .inputCpfTutorFocusNode1,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'CPF',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Ex: 123.456.789-00',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFFF753F),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 0.0,
                                                            16.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLines: null,
                                              cursorColor: const Color(0xFFFF753F),
                                              validator: _model
                                                  .inputCpfTutorTextController1Validator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                _model.inputCpfTutorMask1
                                              ],
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 45.0,
                                            decoration: const BoxDecoration(),
                                            child: TextFormField(
                                              controller: _model
                                                  .inputEmailTutorTextController1,
                                              focusNode: _model
                                                  .inputEmailTutorFocusNode1,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'E-mail',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText:
                                                    'Ex: email@email.com.br',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFFF753F),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 0.0,
                                                            16.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLines: null,
                                              cursorColor: const Color(0xFFFF753F),
                                              validator: _model
                                                  .inputEmailTutorTextController1Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 45.0,
                                            decoration: const BoxDecoration(),
                                            child: TextFormField(
                                              controller: _model
                                                  .inputTelefoneTutorTextController1,
                                              focusNode: _model
                                                  .inputTelefoneTutorFocusNode1,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Telefone',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText:
                                                    'Ex: (11) 9 9123-4567',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFFF753F),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 0.0,
                                                            16.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLines: null,
                                              cursorColor: const Color(0xFFFF753F),
                                              validator: _model
                                                  .inputTelefoneTutorTextController1Validator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                _model.inputTelefoneTutorMask1
                                              ],
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Container(
                                            height: 45.0,
                                            constraints: const BoxConstraints(
                                              minWidth: 150.0,
                                              maxWidth: 300.0,
                                            ),
                                            decoration: const BoxDecoration(),
                                            child: TextFormField(
                                              controller: _model
                                                  .inputCepTextController1,
                                              focusNode:
                                                  _model.inputCepFocusNode1,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'CEP',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Ex: 00000-000',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFFF753F),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 0.0,
                                                            16.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLines: null,
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              cursorColor: const Color(0xFFFF753F),
                                              validator: _model
                                                  .inputCepTextController1Validator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                _model.inputCepMask1
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Stack(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    _model.outCep =
                                                        await BuscaCEPCall.call(
                                                      cep: _model
                                                          .inputCepTextController1
                                                          .text,
                                                    );

                                                    if ((_model.outCep
                                                            ?.succeeded ??
                                                        true)) {
                                                      safeSetState(() {
                                                        _model
                                                            .inputRuaTextController1
                                                            ?.text = getJsonField(
                                                          (_model.outCep
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.logradouro''',
                                                        ).toString();
                                                        _model
                                                            .inputRuaFocusNode1
                                                            ?.requestFocus();
                                                        WidgetsBinding.instance
                                                            .addPostFrameCallback(
                                                                (_) {
                                                          _model.inputRuaTextController1
                                                                  ?.selection =
                                                              TextSelection
                                                                  .collapsed(
                                                            offset: _model
                                                                .inputRuaTextController1!
                                                                .text
                                                                .length,
                                                          );
                                                        });
                                                      });
                                                      safeSetState(() {
                                                        _model
                                                            .inputBairroTextController1
                                                            ?.text = getJsonField(
                                                          (_model.outCep
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.bairro''',
                                                        ).toString();
                                                        _model
                                                            .inputBairroFocusNode1
                                                            ?.requestFocus();
                                                        WidgetsBinding.instance
                                                            .addPostFrameCallback(
                                                                (_) {
                                                          _model.inputBairroTextController1
                                                                  ?.selection =
                                                              TextSelection
                                                                  .collapsed(
                                                            offset: _model
                                                                .inputBairroTextController1!
                                                                .text
                                                                .length,
                                                          );
                                                        });
                                                      });
                                                      safeSetState(() {
                                                        _model
                                                            .inputCidadeTextController1
                                                            ?.text = getJsonField(
                                                          (_model.outCep
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.localidade''',
                                                        ).toString();
                                                        _model
                                                            .inputCidadeFocusNode1
                                                            ?.requestFocus();
                                                        WidgetsBinding.instance
                                                            .addPostFrameCallback(
                                                                (_) {
                                                          _model.inputCidadeTextController1
                                                                  ?.selection =
                                                              TextSelection
                                                                  .collapsed(
                                                            offset: _model
                                                                .inputCidadeTextController1!
                                                                .text
                                                                .length,
                                                          );
                                                        });
                                                      });
                                                      safeSetState(() {
                                                        _model.inputUfTextController1
                                                                ?.text =
                                                            _model
                                                                .inputUfTextController1
                                                                .text;
                                                        _model.inputUfFocusNode1
                                                            ?.requestFocus();
                                                        WidgetsBinding.instance
                                                            .addPostFrameCallback(
                                                                (_) {
                                                          _model.inputUfTextController1
                                                                  ?.selection =
                                                              TextSelection
                                                                  .collapsed(
                                                            offset: _model
                                                                .inputUfTextController1!
                                                                .text
                                                                .length,
                                                          );
                                                        });
                                                      });
                                                    } else {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Erro ao localizar CEP',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .error,
                                                        ),
                                                      );
                                                    }

                                                    safeSetState(() {});
                                                  },
                                                  child: Container(
                                                    width: 45.0,
                                                    height: 45.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    _model.retornoCEP =
                                                        await BuscaCEPCall.call(
                                                      cep: _model
                                                          .inputCepTextController1
                                                          .text,
                                                    );

                                                    if ((_model.retornoCEP
                                                            ?.succeeded ??
                                                        true)) {
                                                      _model.logradouro =
                                                          getJsonField(
                                                        (_model.retornoCEP
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.logradouro''',
                                                      ).toString();
                                                      _model.bairro =
                                                          getJsonField(
                                                        (_model.retornoCEP
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.bairro''',
                                                      ).toString();
                                                      _model.cidade =
                                                          getJsonField(
                                                        (_model.retornoCEP
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.localidade''',
                                                      ).toString();
                                                      _model.uf = getJsonField(
                                                        (_model.retornoCEP
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.uf''',
                                                      ).toString();
                                                      safeSetState(() {});
                                                      safeSetState(() {
                                                        _model
                                                            .inputRuaTextController1
                                                            ?.text = getJsonField(
                                                          (_model.retornoCEP
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.logradouro''',
                                                        ).toString();
                                                        _model
                                                            .inputRuaFocusNode1
                                                            ?.requestFocus();
                                                        WidgetsBinding.instance
                                                            .addPostFrameCallback(
                                                                (_) {
                                                          _model.inputRuaTextController1
                                                                  ?.selection =
                                                              TextSelection
                                                                  .collapsed(
                                                            offset: _model
                                                                .inputRuaTextController1!
                                                                .text
                                                                .length,
                                                          );
                                                        });
                                                      });
                                                      safeSetState(() {
                                                        _model
                                                            .inputBairroTextController1
                                                            ?.text = getJsonField(
                                                          (_model.retornoCEP
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.bairro''',
                                                        ).toString();
                                                        _model
                                                            .inputBairroFocusNode1
                                                            ?.requestFocus();
                                                        WidgetsBinding.instance
                                                            .addPostFrameCallback(
                                                                (_) {
                                                          _model.inputBairroTextController1
                                                                  ?.selection =
                                                              TextSelection
                                                                  .collapsed(
                                                            offset: _model
                                                                .inputBairroTextController1!
                                                                .text
                                                                .length,
                                                          );
                                                        });
                                                      });
                                                      safeSetState(() {
                                                        _model
                                                            .inputCidadeTextController1
                                                            ?.text = getJsonField(
                                                          (_model.retornoCEP
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.localidade''',
                                                        ).toString();
                                                        _model
                                                            .inputCidadeFocusNode1
                                                            ?.requestFocus();
                                                        WidgetsBinding.instance
                                                            .addPostFrameCallback(
                                                                (_) {
                                                          _model.inputCidadeTextController1
                                                                  ?.selection =
                                                              TextSelection
                                                                  .collapsed(
                                                            offset: _model
                                                                .inputCidadeTextController1!
                                                                .text
                                                                .length,
                                                          );
                                                        });
                                                      });
                                                      safeSetState(() {
                                                        _model
                                                            .inputUfTextController1
                                                            ?.text = getJsonField(
                                                          (_model.retornoCEP
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.uf''',
                                                        ).toString();
                                                        _model.inputUfFocusNode1
                                                            ?.requestFocus();
                                                        WidgetsBinding.instance
                                                            .addPostFrameCallback(
                                                                (_) {
                                                          _model.inputUfTextController1
                                                                  ?.selection =
                                                              TextSelection
                                                                  .collapsed(
                                                            offset: _model
                                                                .inputUfTextController1!
                                                                .text
                                                                .length,
                                                          );
                                                        });
                                                      });
                                                    }

                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.search_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 12.0)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 45.0,
                                            decoration: const BoxDecoration(),
                                            child: TextFormField(
                                              controller: _model
                                                  .inputRuaTextController1,
                                              focusNode:
                                                  _model.inputRuaFocusNode1,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Rua',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Rua',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFFF753F),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 0.0,
                                                            16.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLines: null,
                                              cursorColor: const Color(0xFFFF753F),
                                              validator: _model
                                                  .inputRuaTextController1Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 80.0,
                                          height: 45.0,
                                          decoration: const BoxDecoration(),
                                          child: SizedBox(
                                            width: 80.0,
                                            child: TextFormField(
                                              controller: _model
                                                  .inputNumeroTextController1,
                                              focusNode:
                                                  _model.inputNumeroFocusNode1,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Nº',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Nº',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFFF753F),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 0.0,
                                                            16.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLines: null,
                                              cursorColor: const Color(0xFFFF753F),
                                              validator: _model
                                                  .inputNumeroTextController1Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 45.0,
                                            decoration: const BoxDecoration(),
                                            child: TextFormField(
                                              controller: _model
                                                  .inputBairroTextController1,
                                              focusNode:
                                                  _model.inputBairroFocusNode1,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Bairro',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Bairro',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFFF753F),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 0.0,
                                                            16.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLines: null,
                                              cursorColor: const Color(0xFFFF753F),
                                              validator: _model
                                                  .inputBairroTextController1Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 45.0,
                                            decoration: const BoxDecoration(),
                                            child: TextFormField(
                                              controller: _model
                                                  .inputCidadeTextController1,
                                              focusNode:
                                                  _model.inputCidadeFocusNode1,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Cidade',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Cidade',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFFF753F),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 0.0,
                                                            16.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLines: null,
                                              cursorColor: const Color(0xFFFF753F),
                                              validator: _model
                                                  .inputCidadeTextController1Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 45.0,
                                          decoration: const BoxDecoration(),
                                          child: SizedBox(
                                            width: 80.0,
                                            child: TextFormField(
                                              controller:
                                                  _model.inputUfTextController1,
                                              focusNode:
                                                  _model.inputUfFocusNode1,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'UF',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'UF',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFFF753F),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 0.0,
                                                            16.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              textAlign: TextAlign.start,
                                              maxLines: null,
                                              cursorColor: const Color(0xFFFF753F),
                                              validator: _model
                                                  .inputUfTextController1Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Opacity(
                                          opacity: 0.0,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Text(
                                                'Adicionar pet',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFFF16712),
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: 0.0,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Text(
                                                'Preencha os dados do pet',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  StyledDivider(
                                    thickness: 2.0,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    lineStyle: DividerLineStyle.dotted,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 45.0,
                                            decoration: const BoxDecoration(),
                                            child: TextFormField(
                                              controller: _model
                                                  .inputNomePacienteTextController1,
                                              focusNode: _model
                                                  .inputNomePacienteFocusNode1,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Nome do paciente',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Ex: Sophia',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFFF753F),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 0.0,
                                                            16.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLines: null,
                                              cursorColor: const Color(0xFFFF753F),
                                              validator: _model
                                                  .inputNomePacienteTextController1Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 45.0,
                                            decoration: const BoxDecoration(),
                                            child: TextFormField(
                                              controller: _model
                                                  .inputEspeciePacienteTextController1,
                                              focusNode: _model
                                                  .inputEspeciePacienteFocusNode1,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Espécie',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Ex: Cachorro',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFFF753F),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 0.0,
                                                            16.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLines: null,
                                              cursorColor: const Color(0xFFFF753F),
                                              validator: _model
                                                  .inputEspeciePacienteTextController1Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Container(
                                            height: 48.0,
                                            constraints: const BoxConstraints(
                                              minWidth: 150.0,
                                              maxWidth: 300.0,
                                            ),
                                            decoration: const BoxDecoration(),
                                            child:
                                                FutureBuilder<List<RacasRow>>(
                                              future: RacasTable().queryRows(
                                                queryFn: (q) => q.eqOrNull(
                                                  'user_id',
                                                  currentUserUid,
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<RacasRow>
                                                    inputSelecionarRacaPacienteRacasRowList =
                                                    snapshot.data!;

                                                return FlutterFlowDropDown<int>(
                                                  controller: _model
                                                          .inputSelecionarRacaPacienteValueController1 ??=
                                                      FormFieldController<int>(
                                                    _model.inputSelecionarRacaPacienteValue1 ??=
                                                        0,
                                                  ),
                                                  options: List<int>.from(
                                                      inputSelecionarRacaPacienteRacasRowList
                                                          .map((e) => e.id)
                                                          .toList()),
                                                  optionLabels:
                                                      inputSelecionarRacaPacienteRacasRowList
                                                          .map((e) => e.raca)
                                                          .withoutNulls
                                                          .toList(),
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .inputSelecionarRacaPacienteValue1 =
                                                          val),
                                                  searchHintTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 13.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                  searchTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Selecionar raça',
                                                  searchHintText:
                                                      'Pesquisar raça...',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 0.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  borderWidth: 1.0,
                                                  borderRadius: 12.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: true,
                                                  isSearchable: true,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Stack(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Container(
                                                  width: 45.0,
                                                  height: 45.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Icon(
                                                  Icons.add,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 65.0,
                                            decoration: const BoxDecoration(),
                                            child: TextFormField(
                                              controller: _model
                                                  .inputAnoNascimentoPacienteTextController1,
                                              focusNode: _model
                                                  .inputAnoNascimentoPacienteFocusNode1,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Data de nascimento',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Ex: 04/05/2015',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFFF753F),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 0.0,
                                                            16.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLines: null,
                                              cursorColor: const Color(0xFFFF753F),
                                              validator: _model
                                                  .inputAnoNascimentoPacienteTextController1Validator
                                                  .asValidator(context),
                                              inputFormatters: [
                                                _model
                                                    .inputAnoNascimentoPacienteMask1
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 45.0,
                                            decoration: const BoxDecoration(),
                                            child: TextFormField(
                                              controller: _model
                                                  .inputPesoPacienteTextController1,
                                              focusNode: _model
                                                  .inputPesoPacienteFocusNode1,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Peso',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Ex: 10.00',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFFF753F),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                contentPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 0.0,
                                                            16.0, 0.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLines: null,
                                              cursorColor: const Color(0xFFFF753F),
                                              validator: _model
                                                  .inputPesoPacienteTextController1Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 45.0,
                                            decoration: const BoxDecoration(),
                                            child: FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .inputSelecionarSexoPacienteValueController1 ??=
                                                  FormFieldController<String>(
                                                      null),
                                              options: const ['Fêmea', 'Macho'],
                                              onChanged: (val) => safeSetState(
                                                  () => _model
                                                          .inputSelecionarSexoPacienteValue1 =
                                                      val),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Selecionar sexo',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 0.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              borderWidth: 1.0,
                                              borderRadius: 12.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              hidesUnderline: true,
                                              isOverButton: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: 45.0,
                                            height: 45.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 8.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.addToDtPetsCadastro(
                                                    DtPetsCadastroStruct(
                                                  nome: _model
                                                      .inputNomePacienteTextController1
                                                      .text,
                                                  especie: _model
                                                      .inputEspeciePacienteTextController1
                                                      .text,
                                                  nascimento: _model
                                                      .inputAnoNascimentoPacienteTextController1
                                                      .text,
                                                  sexo: _model
                                                      .inputSelecionarSexoPacienteValue1,
                                                  peso: int.tryParse(_model
                                                      .inputPesoPacienteTextController1
                                                      .text),
                                                  racaId: _model
                                                      .inputSelecionarRacaPacienteValue1,
                                                ));
                                                safeSetState(() {});
                                                _model.contadorPets =
                                                    _model.contadorPets! + 1;
                                                safeSetState(() {});
                                                safeSetState(() {
                                                  _model
                                                      .inputNomePacienteTextController1
                                                      ?.clear();
                                                  _model
                                                      .inputEspeciePacienteTextController1
                                                      ?.clear();
                                                  _model
                                                      .inputAnoNascimentoPacienteTextController1
                                                      ?.clear();
                                                  _model
                                                      .inputAnoNascimentoPacienteMask1
                                                      .clear();
                                                  _model
                                                      .inputPesoPacienteTextController1
                                                      ?.clear();
                                                });
                                                safeSetState(() {
                                                  _model
                                                      .inputSelecionarSexoPacienteValueController1
                                                      ?.reset();
                                                  _model
                                                      .inputSelecionarRacaPacienteValueController1
                                                      ?.reset();
                                                });
                                              },
                                              child: Container(
                                                width: 200.0,
                                                height: 45.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  border: Border.all(
                                                    color: const Color(0xFFF16712),
                                                  ),
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'Adicionar pet',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: 45.0,
                                            height: 45.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    constraints: const BoxConstraints(
                                      minHeight: 200.0,
                                      maxHeight: 300.0,
                                    ),
                                    decoration: const BoxDecoration(),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 24.0, 16.0, 24.0),
                                      child: Builder(
                                        builder: (context) {
                                          final petsCadastro =
                                              _model.dtPetsCadastro.toList();

                                          return FlutterFlowDataTable<
                                              DtPetsCadastroStruct>(
                                            controller: _model
                                                .paginatedDataTableController1,
                                            data: petsCadastro,
                                            columnsBuilder: (onSortChanged) => [
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Nome',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Espécie',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Raça',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Nascido em',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Peso',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                fixedWidth: 90.0,
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Sexo',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            dataRowBuilder: (petsCadastroItem,
                                                    petsCadastroIndex,
                                                    selected,
                                                    onSelectChanged) =>
                                                DataRow(
                                              color: WidgetStateProperty.all(
                                                petsCadastroIndex % 2 == 0
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                              ),
                                              cells: [
                                                Text(
                                                  petsCadastroItem.nome,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Text(
                                                  petsCadastroItem.especie,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                FutureBuilder<List<RacasRow>>(
                                                  future: RacasTable()
                                                      .querySingleRow(
                                                    queryFn: (q) => q.eqOrNull(
                                                      'id',
                                                      petsCadastroItem.racaId,
                                                    ),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<RacasRow>
                                                        racaPacienteRacasRowList =
                                                        snapshot.data!;

                                                    final racaPacienteRacasRow =
                                                        racaPacienteRacasRowList
                                                                .isNotEmpty
                                                            ? racaPacienteRacasRowList
                                                                .first
                                                            : null;

                                                    return Text(
                                                      valueOrDefault<String>(
                                                        racaPacienteRacasRow
                                                            ?.raca,
                                                        'Não Cadastrado',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 13.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    );
                                                  },
                                                ),
                                                Text(
                                                  petsCadastroItem.nascimento,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Text(
                                                  petsCadastroItem.peso
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Text(
                                                  petsCadastroItem.sexo,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ]
                                                  .map((c) => DataCell(c))
                                                  .toList(),
                                            ),
                                            paginated: true,
                                            selectable: false,
                                            hidePaginator: false,
                                            showFirstLastButtons: false,
                                            headingRowHeight: 56.0,
                                            dataRowHeight: 48.0,
                                            columnSpacing: 20.0,
                                            headingRowColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            addHorizontalDivider: true,
                                            addTopAndBottomDivider: false,
                                            hideDefaultHorizontalDivider: true,
                                            horizontalDividerColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            horizontalDividerThickness: 1.0,
                                            addVerticalDivider: false,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 32.0, 16.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 16.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              Navigator.pop(context);
                                            },
                                            text: 'Cancelar',
                                            options: FFButtonOptions(
                                              width: 180.0,
                                              height: 45.0,
                                              padding: const EdgeInsets.all(0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            if ((_model.inputNomeTutorTextController1.text != '') &&
                                                (_model.inputCpfTutorTextController1
                                                        .text !=
                                                    '') &&
                                                (_model.inputEmailTutorTextController1
                                                        .text !=
                                                    '') &&
                                                (_model.inputTelefoneTutorTextController1
                                                        .text !=
                                                    '')) {
                                              // INSERIR TUTOR
                                              _model.outCadastroResponsaveis =
                                                  await TutoresTable().insert({
                                                'nome': _model
                                                    .inputNomeTutorTextController1
                                                    .text,
                                                'cpf': _model
                                                    .inputCpfTutorTextController1
                                                    .text,
                                                'telefone': _model
                                                    .inputTelefoneTutorTextController1
                                                    .text,
                                                'uf': _model
                                                    .inputUfTextController1
                                                    .text,
                                                'cep': _model
                                                    .inputCepTextController1
                                                    .text,
                                                'endereco': _model
                                                    .inputRuaTextController1
                                                    .text,
                                                'cidade': _model
                                                    .inputCidadeTextController1
                                                    .text,
                                                'bairro': _model
                                                    .inputBairroTextController1
                                                    .text,
                                                'email': _model
                                                    .inputEmailTutorTextController1
                                                    .text,
                                                'user_id': currentUserUid,
                                              });
                                              while (
                                                  _model.contadorPets! >= 0) {
                                                _model
                                                    .updateDtPetsCadastroAtIndex(
                                                  _model.contadorPets!,
                                                  (e) => e
                                                    ..tutorId = _model
                                                        .outCadastroResponsaveis
                                                        ?.id,
                                                );
                                                safeSetState(() {});
                                                _model.contadorPets =
                                                    _model.contadorPets! + -1;
                                                safeSetState(() {});
                                              }
                                              await InsertPetsCall.call(
                                                dadosJson: _model.dtPetsCadastro
                                                    .map((e) => e.toMap())
                                                    .toList(),
                                              );

                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return WebViewAware(
                                                    child: AlertDialog(
                                                      title: const Text('Sucesso! '),
                                                      content: const Text(
                                                          'Responsável Adicionado.'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('Ok'),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              );
                                              Navigator.pop(context);
                                            } else {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return WebViewAware(
                                                    child: AlertDialog(
                                                      title: const Text('Erro!'),
                                                      content: const Text(
                                                          'Erro ao adicionar Responsável.'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('Fechar'),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              );
                                            }

                                            safeSetState(() {});
                                          },
                                          text: 'Cadastrar',
                                          options: FFButtonOptions(
                                            width: 180.0,
                                            height: 45.0,
                                            padding: const EdgeInsets.all(0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 16.0)),
                              ),
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          desktop: false,
                        ))
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Cadastrar responsável',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: const Color(
                                                                  0xFFF16712),
                                                              fontSize: 18.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Preencha os dados do responsável',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 44.0,
                                          icon: Icon(
                                            Icons.close_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  StyledDivider(
                                    thickness: 2.0,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    lineStyle: DividerLineStyle.dotted,
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 45.0,
                                        decoration: const BoxDecoration(),
                                        child: TextFormField(
                                          controller: _model
                                              .inputNomeTutorTextController2,
                                          focusNode:
                                              _model.inputNomeTutorFocusNode2,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Nome completo',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Ex: Maria da Silva',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFFFF753F),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                              ),
                                          maxLines: null,
                                          cursorColor: const Color(0xFFFF753F),
                                          validator: _model
                                              .inputNomeTutorTextController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 45.0,
                                        decoration: const BoxDecoration(),
                                        child: TextFormField(
                                          controller: _model
                                              .inputCpfTutorTextController2,
                                          focusNode:
                                              _model.inputCpfTutorFocusNode2,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'CPF',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Ex: 123.456.789-00',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFFFF753F),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                              ),
                                          maxLines: null,
                                          cursorColor: const Color(0xFFFF753F),
                                          validator: _model
                                              .inputCpfTutorTextController2Validator
                                              .asValidator(context),
                                          inputFormatters: [
                                            _model.inputCpfTutorMask2
                                          ],
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 16.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 45.0,
                                        decoration: const BoxDecoration(),
                                        child: TextFormField(
                                          controller: _model
                                              .inputEmailTutorTextController2,
                                          focusNode:
                                              _model.inputEmailTutorFocusNode2,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'E-mail',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Ex: email@email.com.br',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFFFF753F),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                              ),
                                          maxLines: null,
                                          cursorColor: const Color(0xFFFF753F),
                                          validator: _model
                                              .inputEmailTutorTextController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 45.0,
                                        decoration: const BoxDecoration(),
                                        child: TextFormField(
                                          controller: _model
                                              .inputTelefoneTutorTextController2,
                                          focusNode: _model
                                              .inputTelefoneTutorFocusNode2,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Telefone',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Ex: (11) 9 9123-4567',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFFFF753F),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                              ),
                                          maxLines: null,
                                          cursorColor: const Color(0xFFFF753F),
                                          validator: _model
                                              .inputTelefoneTutorTextController2Validator
                                              .asValidator(context),
                                          inputFormatters: [
                                            _model.inputTelefoneTutorMask2
                                          ],
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 16.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Container(
                                          height: 45.0,
                                          constraints: const BoxConstraints(
                                            minWidth: 150.0,
                                            maxWidth: 300.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child: TextFormField(
                                            controller:
                                                _model.inputCepTextController2,
                                            focusNode:
                                                _model.inputCepFocusNode2,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'CEP',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Ex: 00000-000',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFFF753F),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                ),
                                            maxLines: null,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            cursorColor: const Color(0xFFFF753F),
                                            validator: _model
                                                .inputCepTextController2Validator
                                                .asValidator(context),
                                            inputFormatters: [
                                              _model.inputCepMask2
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Stack(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.outCepMobile =
                                                      await BuscaCEPCall.call(
                                                    cep: _model
                                                        .inputCepTextController2
                                                        .text,
                                                  );

                                                  if ((_model.outCepMobile
                                                          ?.succeeded ??
                                                      true)) {
                                                    safeSetState(() {
                                                      _model
                                                          .inputRuaTextController2
                                                          ?.text = getJsonField(
                                                        (_model.outCepMobile
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.logradouro''',
                                                      ).toString();
                                                      _model.inputRuaFocusNode2
                                                          ?.requestFocus();
                                                      WidgetsBinding.instance
                                                          .addPostFrameCallback(
                                                              (_) {
                                                        _model.inputRuaTextController2
                                                                ?.selection =
                                                            TextSelection
                                                                .collapsed(
                                                          offset: _model
                                                              .inputRuaTextController2!
                                                              .text
                                                              .length,
                                                        );
                                                      });
                                                    });
                                                    safeSetState(() {
                                                      _model
                                                          .inputBairroTextController2
                                                          ?.text = getJsonField(
                                                        (_model.outCepMobile
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.bairro''',
                                                      ).toString();
                                                      _model
                                                          .inputBairroFocusNode2
                                                          ?.requestFocus();
                                                      WidgetsBinding.instance
                                                          .addPostFrameCallback(
                                                              (_) {
                                                        _model.inputBairroTextController2
                                                                ?.selection =
                                                            TextSelection
                                                                .collapsed(
                                                          offset: _model
                                                              .inputBairroTextController2!
                                                              .text
                                                              .length,
                                                        );
                                                      });
                                                    });
                                                    safeSetState(() {
                                                      _model
                                                          .inputCidadeTextController2
                                                          ?.text = getJsonField(
                                                        (_model.outCepMobile
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.localidade''',
                                                      ).toString();
                                                      _model
                                                          .inputCidadeFocusNode2
                                                          ?.requestFocus();
                                                      WidgetsBinding.instance
                                                          .addPostFrameCallback(
                                                              (_) {
                                                        _model.inputCidadeTextController2
                                                                ?.selection =
                                                            TextSelection
                                                                .collapsed(
                                                          offset: _model
                                                              .inputCidadeTextController2!
                                                              .text
                                                              .length,
                                                        );
                                                      });
                                                    });
                                                    safeSetState(() {
                                                      _model.inputUfTextController2
                                                              ?.text =
                                                          _model
                                                              .inputUfTextController2
                                                              .text;
                                                      _model.inputUfFocusNode2
                                                          ?.requestFocus();
                                                      WidgetsBinding.instance
                                                          .addPostFrameCallback(
                                                              (_) {
                                                        _model.inputUfTextController2
                                                                ?.selection =
                                                            TextSelection
                                                                .collapsed(
                                                          offset: _model
                                                              .inputUfTextController2!
                                                              .text
                                                              .length,
                                                        );
                                                      });
                                                    });
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Erro ao localizar CEP',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                          ),
                                                        ),
                                                        duration: const Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                      ),
                                                    );
                                                  }

                                                  safeSetState(() {});
                                                },
                                                child: Container(
                                                  width: 45.0,
                                                  height: 45.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.retornoCEPMobile =
                                                      await BuscaCEPCall.call(
                                                    cep: _model
                                                        .inputCepTextController2
                                                        .text,
                                                  );

                                                  if ((_model.retornoCEPMobile
                                                          ?.succeeded ??
                                                      true)) {
                                                    _model.logradouro =
                                                        getJsonField(
                                                      (_model.retornoCEPMobile
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.logradouro''',
                                                    ).toString();
                                                    _model.bairro =
                                                        getJsonField(
                                                      (_model.retornoCEPMobile
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.bairro''',
                                                    ).toString();
                                                    _model.cidade =
                                                        getJsonField(
                                                      (_model.retornoCEPMobile
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.localidade''',
                                                    ).toString();
                                                    _model.uf = getJsonField(
                                                      (_model.retornoCEPMobile
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.uf''',
                                                    ).toString();
                                                    safeSetState(() {});
                                                    safeSetState(() {
                                                      _model
                                                          .inputRuaTextController2
                                                          ?.text = getJsonField(
                                                        (_model.retornoCEPMobile
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.logradouro''',
                                                      ).toString();
                                                      _model.inputRuaFocusNode2
                                                          ?.requestFocus();
                                                      WidgetsBinding.instance
                                                          .addPostFrameCallback(
                                                              (_) {
                                                        _model.inputRuaTextController2
                                                                ?.selection =
                                                            TextSelection
                                                                .collapsed(
                                                          offset: _model
                                                              .inputRuaTextController2!
                                                              .text
                                                              .length,
                                                        );
                                                      });
                                                    });
                                                    safeSetState(() {
                                                      _model
                                                          .inputBairroTextController2
                                                          ?.text = getJsonField(
                                                        (_model.retornoCEPMobile
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.bairro''',
                                                      ).toString();
                                                      _model
                                                          .inputBairroFocusNode2
                                                          ?.requestFocus();
                                                      WidgetsBinding.instance
                                                          .addPostFrameCallback(
                                                              (_) {
                                                        _model.inputBairroTextController2
                                                                ?.selection =
                                                            TextSelection
                                                                .collapsed(
                                                          offset: _model
                                                              .inputBairroTextController2!
                                                              .text
                                                              .length,
                                                        );
                                                      });
                                                    });
                                                    safeSetState(() {
                                                      _model
                                                          .inputCidadeTextController2
                                                          ?.text = getJsonField(
                                                        (_model.retornoCEPMobile
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.localidade''',
                                                      ).toString();
                                                      _model
                                                          .inputCidadeFocusNode2
                                                          ?.requestFocus();
                                                      WidgetsBinding.instance
                                                          .addPostFrameCallback(
                                                              (_) {
                                                        _model.inputCidadeTextController2
                                                                ?.selection =
                                                            TextSelection
                                                                .collapsed(
                                                          offset: _model
                                                              .inputCidadeTextController2!
                                                              .text
                                                              .length,
                                                        );
                                                      });
                                                    });
                                                    safeSetState(() {
                                                      _model
                                                          .inputUfTextController2
                                                          ?.text = getJsonField(
                                                        (_model.retornoCEPMobile
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.uf''',
                                                      ).toString();
                                                      _model.inputUfFocusNode2
                                                          ?.requestFocus();
                                                      WidgetsBinding.instance
                                                          .addPostFrameCallback(
                                                              (_) {
                                                        _model.inputUfTextController2
                                                                ?.selection =
                                                            TextSelection
                                                                .collapsed(
                                                          offset: _model
                                                              .inputUfTextController2!
                                                              .text
                                                              .length,
                                                        );
                                                      });
                                                    });
                                                  }

                                                  safeSetState(() {});
                                                },
                                                child: Icon(
                                                  Icons.search_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 12.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 45.0,
                                        decoration: const BoxDecoration(),
                                        child: TextFormField(
                                          controller:
                                              _model.inputRuaTextController2,
                                          focusNode: _model.inputRuaFocusNode2,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Rua',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Rua',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFFFF753F),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                              ),
                                          maxLines: null,
                                          cursorColor: const Color(0xFFFF753F),
                                          validator: _model
                                              .inputRuaTextController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 45.0,
                                        decoration: const BoxDecoration(),
                                        child: SizedBox(
                                          width: 80.0,
                                          child: TextFormField(
                                            controller: _model
                                                .inputNumeroTextController2,
                                            focusNode:
                                                _model.inputNumeroFocusNode2,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Nº',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Nº',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFFF753F),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                ),
                                            maxLines: null,
                                            cursorColor: const Color(0xFFFF753F),
                                            validator: _model
                                                .inputNumeroTextController2Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 16.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 45.0,
                                        decoration: const BoxDecoration(),
                                        child: TextFormField(
                                          controller:
                                              _model.inputBairroTextController2,
                                          focusNode:
                                              _model.inputBairroFocusNode2,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Bairro',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Bairro',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFFFF753F),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                              ),
                                          maxLines: null,
                                          cursorColor: const Color(0xFFFF753F),
                                          validator: _model
                                              .inputBairroTextController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 45.0,
                                        decoration: const BoxDecoration(),
                                        child: TextFormField(
                                          controller:
                                              _model.inputCidadeTextController2,
                                          focusNode:
                                              _model.inputCidadeFocusNode2,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Cidade',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Cidade',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFFFF753F),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                              ),
                                          maxLines: null,
                                          cursorColor: const Color(0xFFFF753F),
                                          validator: _model
                                              .inputCidadeTextController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 45.0,
                                        decoration: const BoxDecoration(),
                                        child: SizedBox(
                                          width: 80.0,
                                          child: TextFormField(
                                            controller:
                                                _model.inputUfTextController2,
                                            focusNode: _model.inputUfFocusNode2,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'UF',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'UF',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFFF753F),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                ),
                                            textAlign: TextAlign.start,
                                            maxLines: null,
                                            cursorColor: const Color(0xFFFF753F),
                                            validator: _model
                                                .inputUfTextController2Validator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 16.0)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Opacity(
                                          opacity: 0.0,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Text(
                                                'Adicionar pet',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFFF16712),
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: 0.0,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Text(
                                                'Preencha os dados do pet',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  StyledDivider(
                                    thickness: 2.0,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    lineStyle: DividerLineStyle.dotted,
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 45.0,
                                        decoration: const BoxDecoration(),
                                        child: TextFormField(
                                          controller: _model
                                              .inputNomePacienteTextController2,
                                          focusNode: _model
                                              .inputNomePacienteFocusNode2,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Nome do paciente',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Ex: Sophia',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFFFF753F),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                              ),
                                          maxLines: null,
                                          cursorColor: const Color(0xFFFF753F),
                                          validator: _model
                                              .inputNomePacienteTextController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 45.0,
                                        decoration: const BoxDecoration(),
                                        child: TextFormField(
                                          controller: _model
                                              .inputEspeciePacienteTextController2,
                                          focusNode: _model
                                              .inputEspeciePacienteFocusNode2,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Espécie',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Ex: Cachorro',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFFFF753F),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                              ),
                                          maxLines: null,
                                          cursorColor: const Color(0xFFFF753F),
                                          validator: _model
                                              .inputEspeciePacienteTextController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 48.0,
                                        constraints: const BoxConstraints(
                                          minWidth: 150.0,
                                          maxWidth: 300.0,
                                        ),
                                        decoration: const BoxDecoration(),
                                        child: FutureBuilder<List<RacasRow>>(
                                          future: RacasTable().queryRows(
                                            queryFn: (q) => q.eqOrNull(
                                              'user_id',
                                              currentUserUid,
                                            ),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<RacasRow>
                                                inputSelecionarRacaPacienteRacasRowList =
                                                snapshot.data!;

                                            return FlutterFlowDropDown<int>(
                                              controller: _model
                                                      .inputSelecionarRacaPacienteValueController2 ??=
                                                  FormFieldController<int>(
                                                _model.inputSelecionarRacaPacienteValue2 ??=
                                                    0,
                                              ),
                                              options: List<int>.from(
                                                  inputSelecionarRacaPacienteRacasRowList
                                                      .map((e) => e.id)
                                                      .toList()),
                                              optionLabels:
                                                  inputSelecionarRacaPacienteRacasRowList
                                                      .map((e) => e.raca)
                                                      .withoutNulls
                                                      .toList(),
                                              onChanged: (val) => safeSetState(
                                                  () => _model
                                                          .inputSelecionarRacaPacienteValue2 =
                                                      val),
                                              searchHintTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              searchTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Selecionar raça',
                                              searchHintText:
                                                  'Pesquisar raça...',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 0.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              borderWidth: 1.0,
                                              borderRadius: 12.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              hidesUnderline: true,
                                              isOverButton: true,
                                              isSearchable: true,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Stack(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height: 45.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                Icons.add,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 24.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 16.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        decoration: const BoxDecoration(),
                                        child: TextFormField(
                                          controller: _model
                                              .inputAnoNascimentoPacienteTextController2,
                                          focusNode: _model
                                              .inputAnoNascimentoPacienteFocusNode2,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Data de nascimento',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Ex: 04/05/2015',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFFFF753F),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                              ),
                                          maxLines: null,
                                          cursorColor: const Color(0xFFFF753F),
                                          validator: _model
                                              .inputAnoNascimentoPacienteTextController2Validator
                                              .asValidator(context),
                                          inputFormatters: [
                                            _model
                                                .inputAnoNascimentoPacienteMask2
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 45.0,
                                        decoration: const BoxDecoration(),
                                        child: TextFormField(
                                          controller: _model
                                              .inputPesoPacienteTextController2,
                                          focusNode: _model
                                              .inputPesoPacienteFocusNode2,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Peso',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Ex: 10.00',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFFFF753F),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                              ),
                                          maxLines: null,
                                          cursorColor: const Color(0xFFFF753F),
                                          validator: _model
                                              .inputPesoPacienteTextController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 45.0,
                                        decoration: const BoxDecoration(),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .inputSelecionarSexoPacienteValueController2 ??=
                                              FormFieldController<String>(null),
                                          options: const ['Fêmea', 'Macho'],
                                          onChanged: (val) => safeSetState(() =>
                                              _model.inputSelecionarSexoPacienteValue2 =
                                                  val),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 13.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Selecionar sexo',
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 0.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderWidth: 1.0,
                                          borderRadius: 12.0,
                                          margin:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          hidesUnderline: true,
                                          isOverButton: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 16.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Flexible(
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.addToDtPetsCadastro(
                                                DtPetsCadastroStruct(
                                              nome: _model
                                                  .inputNomePacienteTextController2
                                                  .text,
                                              especie: _model
                                                  .inputEspeciePacienteTextController2
                                                  .text,
                                              nascimento: _model
                                                  .inputAnoNascimentoPacienteTextController2
                                                  .text,
                                              sexo: _model
                                                  .inputSelecionarSexoPacienteValue2,
                                              peso: int.tryParse(_model
                                                  .inputPesoPacienteTextController2
                                                  .text),
                                              racaId: _model
                                                  .inputSelecionarRacaPacienteValue2,
                                            ));
                                            safeSetState(() {});
                                            _model.contadorPets =
                                                _model.contadorPets! + 1;
                                            safeSetState(() {});
                                            safeSetState(() {
                                              _model
                                                  .inputNomePacienteTextController2
                                                  ?.clear();
                                              _model
                                                  .inputEspeciePacienteTextController2
                                                  ?.clear();
                                              _model
                                                  .inputAnoNascimentoPacienteTextController2
                                                  ?.clear();
                                              _model
                                                  .inputAnoNascimentoPacienteMask2
                                                  .clear();
                                              _model
                                                  .inputPesoPacienteTextController2
                                                  ?.clear();
                                            });
                                            safeSetState(() {
                                              _model
                                                  .inputSelecionarSexoPacienteValueController2
                                                  ?.reset();
                                              _model
                                                  .inputSelecionarRacaPacienteValueController2
                                                  ?.reset();
                                            });
                                          },
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 45.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color: const Color(0xFFF16712),
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              'Adicionar pet',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    constraints: const BoxConstraints(
                                      minHeight: 200.0,
                                      maxHeight: 300.0,
                                    ),
                                    decoration: const BoxDecoration(),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 24.0),
                                      child: Builder(
                                        builder: (context) {
                                          final petsCadastro =
                                              _model.dtPetsCadastro.toList();

                                          return FlutterFlowDataTable<
                                              DtPetsCadastroStruct>(
                                            controller: _model
                                                .paginatedDataTableController2,
                                            data: petsCadastro,
                                            columnsBuilder: (onSortChanged) => [
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Nome',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Espécie',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Raça',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Nascido em',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Peso',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                fixedWidth: 90.0,
                                              ),
                                              DataColumn2(
                                                label: DefaultTextStyle.merge(
                                                  softWrap: true,
                                                  child: Text(
                                                    'Sexo',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            dataRowBuilder: (petsCadastroItem,
                                                    petsCadastroIndex,
                                                    selected,
                                                    onSelectChanged) =>
                                                DataRow(
                                              color: WidgetStateProperty.all(
                                                petsCadastroIndex % 2 == 0
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                              ),
                                              cells: [
                                                Text(
                                                  petsCadastroItem.nome,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Text(
                                                  petsCadastroItem.especie,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                FutureBuilder<List<RacasRow>>(
                                                  future: RacasTable()
                                                      .querySingleRow(
                                                    queryFn: (q) => q.eqOrNull(
                                                      'id',
                                                      petsCadastroItem.racaId,
                                                    ),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<RacasRow>
                                                        racaPacienteRacasRowList =
                                                        snapshot.data!;

                                                    final racaPacienteRacasRow =
                                                        racaPacienteRacasRowList
                                                                .isNotEmpty
                                                            ? racaPacienteRacasRowList
                                                                .first
                                                            : null;

                                                    return Text(
                                                      valueOrDefault<String>(
                                                        racaPacienteRacasRow
                                                            ?.raca,
                                                        'Não Cadastrado',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 13.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    );
                                                  },
                                                ),
                                                Text(
                                                  petsCadastroItem.nascimento,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Text(
                                                  petsCadastroItem.peso
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Text(
                                                  petsCadastroItem.sexo,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ]
                                                  .map((c) => DataCell(c))
                                                  .toList(),
                                            ),
                                            paginated: true,
                                            selectable: false,
                                            hidePaginator: false,
                                            showFirstLastButtons: false,
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            minWidth: 800.0,
                                            headingRowHeight: 56.0,
                                            dataRowHeight: 48.0,
                                            columnSpacing: 20.0,
                                            headingRowColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            addHorizontalDivider: true,
                                            addTopAndBottomDivider: false,
                                            hideDefaultHorizontalDivider: true,
                                            horizontalDividerColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            horizontalDividerThickness: 1.0,
                                            addVerticalDivider: false,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () async {
                                            Navigator.pop(context);
                                          },
                                          text: 'Cancelar',
                                          options: FFButtonOptions(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 49.0,
                                            padding: const EdgeInsets.all(0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 0.0,
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            if ((_model.inputNomeTutorTextController2.text != '') &&
                                                (_model.inputCpfTutorTextController2
                                                        .text !=
                                                    '') &&
                                                (_model.inputEmailTutorTextController2
                                                        .text !=
                                                    '') &&
                                                (_model.inputTelefoneTutorTextController2
                                                        .text !=
                                                    '')) {
                                              // INSERIR TUTOR
                                              _model.outCadastroResponsaveisMobile =
                                                  await TutoresTable().insert({
                                                'nome': _model
                                                    .inputNomeTutorTextController2
                                                    .text,
                                                'cpf': _model
                                                    .inputCpfTutorTextController2
                                                    .text,
                                                'telefone': _model
                                                    .inputTelefoneTutorTextController2
                                                    .text,
                                                'uf': _model
                                                    .inputUfTextController2
                                                    .text,
                                                'cep': _model
                                                    .inputCepTextController2
                                                    .text,
                                                'endereco': _model
                                                    .inputRuaTextController2
                                                    .text,
                                                'cidade': _model
                                                    .inputCidadeTextController2
                                                    .text,
                                                'bairro': _model
                                                    .inputBairroTextController2
                                                    .text,
                                                'email': _model
                                                    .inputEmailTutorTextController2
                                                    .text,
                                                'user_id': currentUserUid,
                                              });
                                              while (
                                                  _model.contadorPets! >= 0) {
                                                _model
                                                    .updateDtPetsCadastroAtIndex(
                                                  _model.contadorPets!,
                                                  (e) => e
                                                    ..tutorId = _model
                                                        .outCadastroResponsaveisMobile
                                                        ?.id,
                                                );
                                                safeSetState(() {});
                                                _model.contadorPets =
                                                    _model.contadorPets! + -1;
                                                safeSetState(() {});
                                              }
                                              await InsertPetsCall.call(
                                                dadosJson: _model.dtPetsCadastro
                                                    .map((e) => e.toMap())
                                                    .toList(),
                                              );

                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return WebViewAware(
                                                    child: AlertDialog(
                                                      title: const Text('Sucesso! '),
                                                      content: const Text(
                                                          'Responsável Adicionado.'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('Ok'),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              );
                                              Navigator.pop(context);
                                            } else {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return WebViewAware(
                                                    child: AlertDialog(
                                                      title: const Text('Erro!'),
                                                      content: const Text(
                                                          'Erro ao adicionar Responsável.'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('Fechar'),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              );
                                            }

                                            safeSetState(() {});
                                          },
                                          text: 'Cadastrar',
                                          options: FFButtonOptions(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 49.0,
                                            padding: const EdgeInsets.all(0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 16.0)),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
