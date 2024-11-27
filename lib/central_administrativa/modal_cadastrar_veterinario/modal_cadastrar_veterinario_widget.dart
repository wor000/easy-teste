import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'modal_cadastrar_veterinario_model.dart';
export 'modal_cadastrar_veterinario_model.dart';

class ModalCadastrarVeterinarioWidget extends StatefulWidget {
  const ModalCadastrarVeterinarioWidget({super.key});

  @override
  State<ModalCadastrarVeterinarioWidget> createState() =>
      _ModalCadastrarVeterinarioWidgetState();
}

class _ModalCadastrarVeterinarioWidgetState
    extends State<ModalCadastrarVeterinarioWidget> {
  late ModalCadastrarVeterinarioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalCadastrarVeterinarioModel());

    _model.inputNomeVeterinarioTextController1 ??= TextEditingController();
    _model.inputNomeVeterinarioFocusNode1 ??= FocusNode();

    _model.inputCpfVeterinarioTextController1 ??= TextEditingController();
    _model.inputCpfVeterinarioFocusNode1 ??= FocusNode();

    _model.inputCrmvVeterinarioTextController1 ??= TextEditingController();
    _model.inputCrmvVeterinarioFocusNode1 ??= FocusNode();

    _model.inputEmailVeterinarioTextController1 ??= TextEditingController();
    _model.inputEmailVeterinarioFocusNode1 ??= FocusNode();

    _model.inputTelefoneVeterinarioTextController1 ??= TextEditingController();
    _model.inputTelefoneVeterinarioFocusNode1 ??= FocusNode();

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

    _model.inputNomeVeterinarioTextController2 ??= TextEditingController();
    _model.inputNomeVeterinarioFocusNode2 ??= FocusNode();

    _model.inputCpfVeterinarioTextController2 ??= TextEditingController();
    _model.inputCpfVeterinarioFocusNode2 ??= FocusNode();

    _model.inputCrmvVeterinarioTextController2 ??= TextEditingController();
    _model.inputCrmvVeterinarioFocusNode2 ??= FocusNode();

    _model.inputEmailVeterinarioTextController2 ??= TextEditingController();
    _model.inputEmailVeterinarioFocusNode2 ??= FocusNode();

    _model.inputTelefoneVeterinarioTextController2 ??= TextEditingController();
    _model.inputTelefoneVeterinarioFocusNode2 ??= FocusNode();

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

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
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
                    width: 700.0,
                    constraints: const BoxConstraints(
                      maxHeight: 600.0,
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
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                          'Cadastrar veterinário',
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
                                                          'Preencha os dados do veterinário',
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
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
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
                                                    .inputNomeVeterinarioTextController1,
                                                focusNode: _model
                                                    .inputNomeVeterinarioFocusNode1,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Nome completo',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText:
                                                      'Ex: Drª Mariana Prado',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                    .inputNomeVeterinarioTextController1Validator
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
                                                    .inputCpfVeterinarioTextController1,
                                                focusNode: _model
                                                    .inputCpfVeterinarioFocusNode1,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Cpf',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText:
                                                      'Ex: 123.456.789-00',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                    .inputCpfVeterinarioTextController1Validator
                                                    .asValidator(context),
                                                inputFormatters: [
                                                  _model
                                                      .inputCpfVeterinarioMask1
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
                                                    .inputCrmvVeterinarioTextController1,
                                                focusNode: _model
                                                    .inputCrmvVeterinarioFocusNode1,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'CRMV',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Ex: 1234/A',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                    .inputCrmvVeterinarioTextController1Validator
                                                    .asValidator(context),
                                                inputFormatters: [
                                                  _model
                                                      .inputCrmvVeterinarioMask1
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
                                                    .inputEmailVeterinarioTextController1,
                                                focusNode: _model
                                                    .inputEmailVeterinarioFocusNode1,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'E-mail',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText:
                                                      'Ex: email@email.com.br',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                    .inputEmailVeterinarioTextController1Validator
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
                                                    .inputTelefoneVeterinarioTextController1,
                                                focusNode: _model
                                                    .inputTelefoneVeterinarioFocusNode1,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Telefone',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText:
                                                      'Ex: (11) 9 9123-4567',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                    .inputTelefoneVeterinarioTextController1Validator
                                                    .asValidator(context),
                                                inputFormatters: [
                                                  _model
                                                      .inputTelefoneVeterinarioMask1
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
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Ex: 00000-000',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
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
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
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
                                                          await BuscaCEPCall
                                                              .call(
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
                                                        _model.cidade =
                                                            getJsonField(
                                                          (_model.retornoCEP
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.localidade''',
                                                        ).toString();
                                                        _model.bairro =
                                                            getJsonField(
                                                          (_model.retornoCEP
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.bairro''',
                                                        ).toString();
                                                        _model.uf =
                                                            getJsonField(
                                                          (_model.retornoCEP
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.uf''',
                                                        ).toString();
                                                        safeSetState(() {});
                                                        safeSetState(() {
                                                          _model.inputBairroTextController1
                                                                  ?.text =
                                                              getJsonField(
                                                            (_model.retornoCEP
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.bairro''',
                                                          ).toString();
                                                          _model
                                                              .inputBairroFocusNode1
                                                              ?.requestFocus();
                                                          WidgetsBinding
                                                              .instance
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
                                                          _model.inputCidadeTextController1
                                                                  ?.text =
                                                              getJsonField(
                                                            (_model.retornoCEP
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.localidade''',
                                                          ).toString();
                                                          _model
                                                              .inputCidadeFocusNode1
                                                              ?.requestFocus();
                                                          WidgetsBinding
                                                              .instance
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
                                                              getJsonField(
                                                            (_model.retornoCEP
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.uf''',
                                                          ).toString();
                                                          _model
                                                              .inputUfFocusNode1
                                                              ?.requestFocus();
                                                          WidgetsBinding
                                                              .instance
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
                                                        safeSetState(() {
                                                          _model.inputRuaTextController1
                                                                  ?.text =
                                                              getJsonField(
                                                            (_model.retornoCEP
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.logradouro''',
                                                          ).toString();
                                                          _model
                                                              .inputRuaFocusNode1
                                                              ?.requestFocus();
                                                          WidgetsBinding
                                                              .instance
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
                                                      }

                                                      safeSetState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.search_sharp,
                                                      color: FlutterFlowTheme
                                                              .of(context)
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
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Rua',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                focusNode: _model
                                                    .inputNumeroFocusNode1,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Nº',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Nº',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                focusNode: _model
                                                    .inputBairroFocusNode1,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Bairro',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Bairro',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                focusNode: _model
                                                    .inputCidadeFocusNode1,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Cidade',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'Cidade',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                controller: _model
                                                    .inputUfTextController1,
                                                focusNode:
                                                    _model.inputUfFocusNode1,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'UF',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintText: 'UF',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                          16.0, 32.0, 16.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                              if ((_model.inputNomeVeterinarioTextController1.text != '') &&
                                                  (_model.inputCrmvVeterinarioTextController1
                                                          .text !=
                                                      '') &&
                                                  (_model.inputCpfVeterinarioTextController1
                                                          .text !=
                                                      '') &&
                                                  (_model.inputTelefoneVeterinarioTextController1
                                                          .text !=
                                                      '')) {
                                                await VeterinariosTable()
                                                    .insert({
                                                  'nome': _model
                                                      .inputNomeVeterinarioTextController1
                                                      .text,
                                                  'cpf': _model
                                                      .inputCpfVeterinarioTextController1
                                                      .text,
                                                  'crmv': _model
                                                      .inputCrmvVeterinarioTextController1
                                                      .text,
                                                  'email': _model
                                                      .inputEmailVeterinarioTextController1
                                                      .text,
                                                  'telefone': _model
                                                      .inputTelefoneVeterinarioTextController1
                                                      .text,
                                                  'cep': _model
                                                      .inputCepTextController1
                                                      .text,
                                                  'endereço': _model
                                                      .inputRuaTextController1
                                                      .text,
                                                  'bairro': _model
                                                      .inputBairroTextController1
                                                      .text,
                                                  'cidade': _model
                                                      .inputCidadeTextController1
                                                      .text,
                                                  'uf': _model
                                                      .inputUfTextController1
                                                      .text,
                                                });
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return WebViewAware(
                                                      child: AlertDialog(
                                                        title: const Text('Sucesso'),
                                                        content: const Text(
                                                            'Veterinário Adicionado'),
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
                                                  builder:
                                                      (alertDialogContext) {
                                                    return WebViewAware(
                                                      child: AlertDialog(
                                                        title: const Text('ERRO!'),
                                                        content: const Text(
                                                            'Erro ao cadastrar um veterinário.'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child:
                                                                const Text('Fechar'),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                );
                                              }
                                            },
                                            text: 'Cadastrar',
                                            options: FFButtonOptions(
                                              width: 180.0,
                                              height: 45.0,
                                              padding: const EdgeInsets.all(0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                          'Cadastrar veterinário',
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
                                                          'Preencha os dados do veterinário',
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
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      lineStyle: DividerLineStyle.dotted,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 45.0,
                                            decoration: const BoxDecoration(),
                                            child: TextFormField(
                                              controller: _model
                                                  .inputNomeVeterinarioTextController2,
                                              focusNode: _model
                                                  .inputNomeVeterinarioFocusNode2,
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
                                                hintText:
                                                    'Ex: Drª Mariana Prado',
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
                                                  .inputNomeVeterinarioTextController2Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
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
                                                .inputCpfVeterinarioTextController2,
                                            focusNode: _model
                                                .inputCpfVeterinarioFocusNode2,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Cpf',
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
                                            cursorColor: const Color(0xFFFF753F),
                                            validator: _model
                                                .inputCpfVeterinarioTextController2Validator
                                                .asValidator(context),
                                            inputFormatters: [
                                              _model.inputCpfVeterinarioMask2
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
                                                .inputCrmvVeterinarioTextController2,
                                            focusNode: _model
                                                .inputCrmvVeterinarioFocusNode2,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'CRMV',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Ex: 1234/A',
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
                                            cursorColor: const Color(0xFFFF753F),
                                            validator: _model
                                                .inputCrmvVeterinarioTextController2Validator
                                                .asValidator(context),
                                            inputFormatters: [
                                              _model.inputCrmvVeterinarioMask2
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
                                                .inputEmailVeterinarioTextController2,
                                            focusNode: _model
                                                .inputEmailVeterinarioFocusNode2,
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
                                            cursorColor: const Color(0xFFFF753F),
                                            validator: _model
                                                .inputEmailVeterinarioTextController2Validator
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
                                                .inputTelefoneVeterinarioTextController2,
                                            focusNode: _model
                                                .inputTelefoneVeterinarioFocusNode2,
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
                                            cursorColor: const Color(0xFFFF753F),
                                            validator: _model
                                                .inputTelefoneVeterinarioTextController2Validator
                                                .asValidator(context),
                                            inputFormatters: [
                                              _model
                                                  .inputTelefoneVeterinarioMask2
                                            ],
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 18.0)),
                                    ),
                                    Row(
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
                                                  .inputCepTextController2,
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
                                                      _model.cidade =
                                                          getJsonField(
                                                        (_model.retornoCEPMobile
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.localidade''',
                                                      ).toString();
                                                      _model.bairro =
                                                          getJsonField(
                                                        (_model.retornoCEPMobile
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.bairro''',
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
                                                      safeSetState(() {
                                                        _model
                                                            .inputRuaTextController2
                                                            ?.text = getJsonField(
                                                          (_model.retornoCEPMobile
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.logradouro''',
                                                        ).toString();
                                                        _model
                                                            .inputRuaFocusNode2
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
                                            focusNode:
                                                _model.inputRuaFocusNode2,
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
                                                  .inputNumeroTextController2Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 18.0)),
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
                                                .inputBairroTextController2,
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
                                            controller: _model
                                                .inputCidadeTextController2,
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
                                              focusNode:
                                                  _model.inputUfFocusNode2,
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
                                                  .inputUfTextController2Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 16.0)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 32.0, 0.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 1.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                Navigator.pop(context);
                                              },
                                              text: 'Cancelar',
                                              options: FFButtonOptions(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height: 49.0,
                                                padding: const EdgeInsets.all(0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                              if ((_model.inputNomeVeterinarioTextController2.text != '') &&
                                                  (_model.inputCrmvVeterinarioTextController2
                                                          .text !=
                                                      '') &&
                                                  (_model.inputCpfVeterinarioTextController2
                                                          .text !=
                                                      '') &&
                                                  (_model.inputTelefoneVeterinarioTextController2
                                                          .text !=
                                                      '')) {
                                                await VeterinariosTable()
                                                    .insert({
                                                  'nome': _model
                                                      .inputNomeVeterinarioTextController2
                                                      .text,
                                                  'cpf': _model
                                                      .inputCpfVeterinarioTextController2
                                                      .text,
                                                  'crmv': _model
                                                      .inputCrmvVeterinarioTextController2
                                                      .text,
                                                  'email': _model
                                                      .inputEmailVeterinarioTextController2
                                                      .text,
                                                  'telefone': _model
                                                      .inputTelefoneVeterinarioTextController2
                                                      .text,
                                                  'cep': _model
                                                      .inputCepTextController2
                                                      .text,
                                                  'endereço': _model
                                                      .inputRuaTextController2
                                                      .text,
                                                  'bairro': _model
                                                      .inputBairroTextController2
                                                      .text,
                                                  'cidade': _model
                                                      .inputCidadeTextController2
                                                      .text,
                                                  'uf': _model
                                                      .inputUfTextController2
                                                      .text,
                                                });
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return WebViewAware(
                                                      child: AlertDialog(
                                                        title: const Text('Sucesso'),
                                                        content: const Text(
                                                            'Veterinário Adicionado'),
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
                                                  builder:
                                                      (alertDialogContext) {
                                                    return WebViewAware(
                                                      child: AlertDialog(
                                                        title: const Text('ERRO!'),
                                                        content: const Text(
                                                            'Erro ao cadastrar um veterinário.'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child:
                                                                const Text('Fechar'),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                );
                                              }
                                            },
                                            text: 'Cadastrar',
                                            options: FFButtonOptions(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 49.0,
                                              padding: const EdgeInsets.all(0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                        ].divide(const SizedBox(height: 8.0)),
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
      ),
    );
  }
}
