import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'modal_editar_paciente_model.dart';
export 'modal_editar_paciente_model.dart';

class ModalEditarPacienteWidget extends StatefulWidget {
  const ModalEditarPacienteWidget({
    super.key,
    required this.petId,
  });

  final int? petId;

  @override
  State<ModalEditarPacienteWidget> createState() =>
      _ModalEditarPacienteWidgetState();
}

class _ModalEditarPacienteWidgetState extends State<ModalEditarPacienteWidget> {
  late ModalEditarPacienteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalEditarPacienteModel());

    _model.inputNomePacienteFocusNode1 ??= FocusNode();

    _model.inputEspeciePacienteFocusNode1 ??= FocusNode();

    _model.inputAnoNascimentoPacienteFocusNode1 ??= FocusNode();

    _model.inputPesoPacienteFocusNode1 ??= FocusNode();

    _model.inputNomePacienteFocusNode2 ??= FocusNode();

    _model.inputEspeciePacienteFocusNode2 ??= FocusNode();

    _model.inputAnoNascimentoPacienteFocusNode2 ??= FocusNode();

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
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
          ))
            Expanded(
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(36.0, 0.0, 36.0, 0.0),
                  child: FutureBuilder<List<PetsRow>>(
                    future: PetsTable().querySingleRow(
                      queryFn: (q) => q.eqOrNull(
                        'id',
                        widget.petId,
                      ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<PetsRow> profileCardPetsRowList = snapshot.data!;

                      final profileCardPetsRow =
                          profileCardPetsRowList.isNotEmpty
                              ? profileCardPetsRowList.first
                              : null;

                      return Container(
                        width: 700.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                        child: Padding(
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
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    child: Text(
                                                      'Editar paciente',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: const Color(
                                                                0xFFF16712),
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
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
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    child: Text(
                                                      'Edite os dados do paciente',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
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
                                  color: FlutterFlowTheme.of(context).alternate,
                                  lineStyle: DividerLineStyle.dotted,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Container(
                                          height: 48.0,
                                          constraints: const BoxConstraints(
                                            minWidth: 150.0,
                                            maxWidth: 300.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child:
                                              FutureBuilder<List<TutoresRow>>(
                                            future: TutoresTable().queryRows(
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
                                              List<TutoresRow>
                                                  inputSelecionarResponsavelTutoresRowList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<int>(
                                                controller: _model
                                                        .inputSelecionarResponsavelValueController1 ??=
                                                    FormFieldController<int>(
                                                  _model.inputSelecionarResponsavelValue1 ??=
                                                      profileCardPetsRow
                                                          ?.tutorId,
                                                ),
                                                options: List<int>.from(
                                                    inputSelecionarResponsavelTutoresRowList
                                                        .map((e) => e.id)
                                                        .toList()),
                                                optionLabels:
                                                    inputSelecionarResponsavelTutoresRowList
                                                        .map((e) => e.nome)
                                                        .withoutNulls
                                                        .toList(),
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                            .inputSelecionarResponsavelValue1 =
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
                                                hintText:
                                                    'Selecionar responsável',
                                                searchHintText:
                                                    'Pesquisar responsável...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                    .inputNomePacienteTextController1 ??=
                                                TextEditingController(
                                              text: profileCardPetsRow?.nome,
                                            ),
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
                                                    .inputEspeciePacienteTextController1 ??=
                                                TextEditingController(
                                              text: profileCardPetsRow?.especie,
                                            ),
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
                                                .inputEspeciePacienteTextController1Validator
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Container(
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
                                                        .inputSelecionarRacaPacienteValueController1 ??=
                                                    FormFieldController<int>(
                                                  _model.inputSelecionarRacaPacienteValue1 ??=
                                                      profileCardPetsRow
                                                          ?.racaId,
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 24.0,
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
                                                    .inputAnoNascimentoPacienteTextController1 ??=
                                                TextEditingController(
                                              text: profileCardPetsRow
                                                  ?.nascimento,
                                            ),
                                            focusNode: _model
                                                .inputAnoNascimentoPacienteFocusNode1,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Data de  nascimento',
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
                                                    .inputPesoPacienteTextController1 ??=
                                                TextEditingController(
                                              text: profileCardPetsRow?.peso
                                                  ?.toString(),
                                            ),
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
                                              _model.inputSelecionarSexoPacienteValue1 ??=
                                                  profileCardPetsRow?.sexo,
                                            ),
                                            options: const ['Fêmea', 'Macho'],
                                            onChanged: (val) => safeSetState(() =>
                                                _model.inputSelecionarSexoPacienteValue1 =
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
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            hidesUnderline: true,
                                            isOverButton: true,
                                            isSearchable: false,
                                            isMultiSelect: false,
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
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
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
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          await PetsTable().update(
                                            data: {
                                              'nome': _model
                                                  .inputNomePacienteTextController1
                                                  .text,
                                              'nascimento': _model
                                                  .inputAnoNascimentoPacienteTextController1
                                                  .text,
                                              'sexo': _model
                                                  .inputSelecionarSexoPacienteValue1,
                                              'especie': _model
                                                  .inputEspeciePacienteTextController1
                                                  .text,
                                              'peso': valueOrDefault<int>(
                                                int.tryParse(_model
                                                    .inputPesoPacienteTextController1
                                                    .text),
                                                0,
                                              ),
                                              'tutor_id': _model
                                                  .inputSelecionarResponsavelValue1,
                                              'raca_id': _model
                                                  .inputSelecionarRacaPacienteValue1,
                                            },
                                            matchingRows: (rows) =>
                                                rows.eqOrNull(
                                              'id',
                                              widget.petId,
                                            ),
                                          );
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return WebViewAware(
                                                child: AlertDialog(
                                                  title: const Text('Sucesso!'),
                                                  content: const Text(
                                                      'Sucesso ao editar paciente.'),
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
                                        },
                                        text: 'Editar',
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
                      );
                    },
                  ),
                ),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            desktop: false,
          ))
            Expanded(
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(36.0, 0.0, 36.0, 0.0),
                  child: FutureBuilder<List<PetsRow>>(
                    future: PetsTable().querySingleRow(
                      queryFn: (q) => q.eqOrNull(
                        'id',
                        widget.petId,
                      ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<PetsRow> profileCardPetsRowList = snapshot.data!;

                      final profileCardPetsRow =
                          profileCardPetsRowList.isNotEmpty
                              ? profileCardPetsRowList.first
                              : null;

                      return Container(
                        width: 700.0,
                        height: MediaQuery.sizeOf(context).height * 0.8,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                        child: Padding(
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
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    child: Text(
                                                      'Editar paciente',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: const Color(
                                                                0xFFF16712),
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
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
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    child: Text(
                                                      'Edite os dados do paciente',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
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
                                  color: FlutterFlowTheme.of(context).alternate,
                                  lineStyle: DividerLineStyle.dotted,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Container(
                                          height: 48.0,
                                          constraints: const BoxConstraints(
                                            minWidth: 150.0,
                                            maxWidth: 300.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child:
                                              FutureBuilder<List<TutoresRow>>(
                                            future: TutoresTable().queryRows(
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
                                              List<TutoresRow>
                                                  inputSelecionarResponsavelTutoresRowList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<int>(
                                                controller: _model
                                                        .inputSelecionarResponsavelValueController2 ??=
                                                    FormFieldController<int>(
                                                  _model.inputSelecionarResponsavelValue2 ??=
                                                      profileCardPetsRow
                                                          ?.tutorId,
                                                ),
                                                options: List<int>.from(
                                                    inputSelecionarResponsavelTutoresRowList
                                                        .map((e) => e.id)
                                                        .toList()),
                                                optionLabels:
                                                    inputSelecionarResponsavelTutoresRowList
                                                        .map((e) => e.nome)
                                                        .withoutNulls
                                                        .toList(),
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                            .inputSelecionarResponsavelValue2 =
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
                                                hintText:
                                                    'Selecionar responsável',
                                                searchHintText:
                                                    'Pesquisar responsável...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                      ),
                                    ].divide(const SizedBox(width: 12.0)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Column(
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
                                                  .inputNomePacienteTextController2 ??=
                                              TextEditingController(
                                            text: profileCardPetsRow?.nome,
                                          ),
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
                                                  .inputEspeciePacienteTextController2 ??=
                                              TextEditingController(
                                            text: profileCardPetsRow?.especie,
                                          ),
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
                                    ].divide(const SizedBox(height: 16.0)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Container(
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
                                                      profileCardPetsRow
                                                          ?.racaId,
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 24.0,
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
                                  child: Column(
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
                                                  .inputAnoNascimentoPacienteTextController2 ??=
                                              TextEditingController(
                                            text:
                                                profileCardPetsRow?.nascimento,
                                          ),
                                          focusNode: _model
                                              .inputAnoNascimentoPacienteFocusNode2,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Data de  nascimento',
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
                                                  .inputPesoPacienteTextController2 ??=
                                              TextEditingController(
                                            text: profileCardPetsRow?.peso
                                                ?.toString(),
                                          ),
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
                                              FormFieldController<String>(
                                            _model.inputSelecionarSexoPacienteValue2 ??=
                                                profileCardPetsRow?.sexo,
                                          ),
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
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 32.0, 16.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          Navigator.pop(context);
                                        },
                                        text: 'Cancelar',
                                        options: FFButtonOptions(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 45.0,
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
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          await PetsTable().update(
                                            data: {
                                              'nome': _model
                                                  .inputNomePacienteTextController2
                                                  .text,
                                              'nascimento': _model
                                                  .inputAnoNascimentoPacienteTextController2
                                                  .text,
                                              'sexo': _model
                                                  .inputSelecionarSexoPacienteValue2,
                                              'especie': _model
                                                  .inputEspeciePacienteTextController2
                                                  .text,
                                              'peso': valueOrDefault<int>(
                                                int.tryParse(_model
                                                    .inputPesoPacienteTextController2
                                                    .text),
                                                0,
                                              ),
                                              'tutor_id': _model
                                                  .inputSelecionarResponsavelValue2,
                                              'raca_id': _model
                                                  .inputSelecionarRacaPacienteValue2,
                                            },
                                            matchingRows: (rows) =>
                                                rows.eqOrNull(
                                              'id',
                                              widget.petId,
                                            ),
                                          );
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return WebViewAware(
                                                child: AlertDialog(
                                                  title: const Text('Sucesso!'),
                                                  content: const Text(
                                                      'Sucesso ao editar paciente.'),
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
                                        },
                                        text: 'Editar',
                                        options: FFButtonOptions(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
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
                                    ].divide(const SizedBox(height: 8.0)),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
