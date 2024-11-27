import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/central_de_laudos/modal_adicionar_frases/modal_adicionar_frases_widget.dart';
import '/central_de_laudos/modal_deletar/modal_deletar_widget.dart';
import '/central_de_laudos/modal_deletar_frase/modal_deletar_frase_widget.dart';
import '/central_de_laudos/modal_ver_usar_modelo/modal_ver_usar_modelo_widget.dart';
import '/central_de_laudos/model_adicionar_modelo/model_adicionar_modelo_widget.dart';
import '/central_de_laudos/model_editar_modelo/model_editar_modelo_widget.dart';
import '/dashboard_elementos_gerais/informacoes_pessoais/informacoes_pessoais_widget.dart';
import '/dashboard_elementos_gerais/logo_boto_home/logo_boto_home_widget.dart';
import '/dashboard_elementos_gerais/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:text_search/text_search.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'minhas_frases_e_laudos_model.dart';
export 'minhas_frases_e_laudos_model.dart';

class MinhasFrasesELaudosWidget extends StatefulWidget {
  const MinhasFrasesELaudosWidget({super.key});

  @override
  State<MinhasFrasesELaudosWidget> createState() =>
      _MinhasFrasesELaudosWidgetState();
}

class _MinhasFrasesELaudosWidgetState extends State<MinhasFrasesELaudosWidget>
    with TickerProviderStateMixin {
  late MinhasFrasesELaudosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MinhasFrasesELaudosModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.allModelos = await LaudosModelosTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'user_id',
          currentUserUid,
        ),
      );
      _model.allFrases = await FrasesTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'user_id',
          currentUserUid,
        ),
      );
      _model.listaModelos =
          _model.allModelos!.toList().cast<LaudosModelosRow>();
      _model.listaFrases = _model.allFrases!.toList().cast<FrasesRow>();
      safeSetState(() {});
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    _model.textFieldFraseTextController ??= TextEditingController();
    _model.textFieldFraseFocusNode ??= FocusNode();

    _model.textFieldModelosTextController ??= TextEditingController();
    _model.textFieldModelosFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: WebViewAware(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: Container(
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.informacoesPessoaisModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: const InformacoesPessoaisWidget(),
                      ),
                      wrapWithModel(
                        model: _model.menuModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: const MenuWidget(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Container(
                    width: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.informacoesPessoaisModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: const InformacoesPessoaisWidget(),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.menuModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: const MenuWidget(),
                        ),
                      ],
                    ),
                  ),
                ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 48.0),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    constraints: const BoxConstraints(
                      maxHeight: double.infinity,
                    ),
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.logoBotoHomeModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const LogoBotoHomeWidget(),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 44.0, 24.0, 20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'CENTRAL DE LAUDOS',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  ' / ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Minhas Frases e Laudos',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 1000.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 16.0, 16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 8.0, 16.0, 12.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                                        context
                                                            .pushNamed('teste');
                                                      },
                                                      child: Text(
                                                        'Minhas Frases e Laudos',
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
                                                    child: Text(
                                                      'Cadastre suas frases personalizadas e seus modelos de Laudos',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 13.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                    ),
                                                  ),
                                                ],
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
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 12.0, 16.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 860.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const Alignment(0.0, 0),
                                                        child:
                                                            FlutterFlowButtonTabBar(
                                                          useToggleButtonStyle:
                                                              false,
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                          unselectedLabelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          labelColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                          unselectedLabelColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryText,
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          unselectedBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                          borderColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          unselectedBorderColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                          borderWidth: 2.0,
                                                          borderRadius: 8.0,
                                                          elevation: 0.0,
                                                          buttonMargin:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      8.0,
                                                                      0.0),
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  4.0),
                                                          tabs: const [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .sort_outlined,
                                                                    size: 22.0,
                                                                  ),
                                                                ),
                                                                Tab(
                                                                  text:
                                                                      'Frases Personalizadas',
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .library_books,
                                                                    size: 22.0,
                                                                  ),
                                                                ),
                                                                Tab(
                                                                  text:
                                                                      'Modelos de Laudos',
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                          controller: _model
                                                              .tabBarController,
                                                          onTap: (i) async {
                                                            [
                                                              () async {},
                                                              () async {}
                                                            ][i]();
                                                          },
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: TabBarView(
                                                          controller: _model
                                                              .tabBarController,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 0.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  height: 760.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: const Color(
                                                                          0x254B5675),
                                                                      width:
                                                                          0.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            16.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              10.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                    child: Container(
                                                                                      width: 300.0,
                                                                                      height: 51.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      ),
                                                                                      child: TextFormField(
                                                                                        controller: _model.textFieldFraseTextController,
                                                                                        focusNode: _model.textFieldFraseFocusNode,
                                                                                        autofocus: false,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          labelText: 'Procurar na tabela',
                                                                                          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Poppins',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          alignLabelWithHint: false,
                                                                                          hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Poppins',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          enabledBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          focusedBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          errorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          focusedErrorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        validator: _model.textFieldFraseTextControllerValidator.asValidator(context),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  FlutterFlowIconButton(
                                                                                    borderColor: const Color(0xFFE0E3E7),
                                                                                    borderRadius: 8.0,
                                                                                    borderWidth: 1.0,
                                                                                    buttonSize: 40.0,
                                                                                    fillColor: const Color(0x3FF16712),
                                                                                    icon: Icon(
                                                                                      Icons.search_sharp,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      size: 20.0,
                                                                                    ),
                                                                                    onPressed: () async {
                                                                                      safeSetState(() {
                                                                                        _model.simpleSearchResults1 = TextSearch(_model.listaFrases.map((e) => e.referencia).withoutNulls.toList().map((str) => TextSearchItem.fromTerms(str, [str])).toList()).search(_model.textFieldFraseTextController.text).map((r) => r.object).toList();
                                                                                      });
                                                                                      _model.listaFrases = _model.listaFrases.where((e) => _model.simpleSearchResults1.contains(e.referencia)).toList().cast<FrasesRow>();
                                                                                      safeSetState(() {});
                                                                                    },
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                child: Builder(
                                                                                  builder: (context) => FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      await showDialog(
                                                                                        context: context,
                                                                                        builder: (dialogContext) {
                                                                                          return Dialog(
                                                                                            elevation: 0,
                                                                                            insetPadding: EdgeInsets.zero,
                                                                                            backgroundColor: Colors.transparent,
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                            child: WebViewAware(
                                                                                              child: GestureDetector(
                                                                                                onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                                child: const ModalAdicionarFrasesWidget(),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                    text: 'Adicionar Frase',
                                                                                    icon: const Icon(
                                                                                      Icons.add,
                                                                                      size: 15.0,
                                                                                    ),
                                                                                    options: FFButtonOptions(
                                                                                      height: 40.0,
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Colors.white,
                                                                                            fontSize: 14.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w300,
                                                                                          ),
                                                                                      elevation: 1.0,
                                                                                      borderSide: const BorderSide(
                                                                                        color: Colors.transparent,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        if (_model.textFieldFraseTextController.text !=
                                                                                '')
                                                                          Container(
                                                                            height:
                                                                                35.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsets.all(4.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Align(
                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                      child: Text(
                                                                                        _model.textFieldFraseTextController.text,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              color: FlutterFlowTheme.of(context).info,
                                                                                              fontSize: 15.0,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      safeSetState(() {
                                                                                        _model.textFieldFraseTextController?.clear();
                                                                                      });
                                                                                      _model.listaFrases = _model.allFrases!.toList().cast<FrasesRow>();
                                                                                      safeSetState(() {});
                                                                                    },
                                                                                    child: Icon(
                                                                                      Icons.close_sharp,
                                                                                      color: FlutterFlowTheme.of(context).info,
                                                                                      size: 20.0,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        FutureBuilder<
                                                                            List<FrasesRow>>(
                                                                          future:
                                                                              FrasesTable().queryRows(
                                                                            queryFn: (q) =>
                                                                                q,
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            List<FrasesRow>
                                                                                containerFrasesRowList =
                                                                                snapshot.data!;

                                                                            return Container(
                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                              height: 660.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Builder(
                                                                                  builder: (context) {
                                                                                    final frases = _model.listaFrases.map((e) => e).toList().sortedList(keyOf: (e) => e.createdAt, desc: true).toList();

                                                                                    return FlutterFlowDataTable<FrasesRow>(
                                                                                      controller: _model.paginatedDataTableController1,
                                                                                      data: frases,
                                                                                      columnsBuilder: (onSortChanged) => [
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Text(
                                                                                              'Adicionado em',
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: FlutterFlowTheme.of(context).secondary,
                                                                                                    fontSize: 14.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          fixedWidth: 130.0,
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Text(
                                                                                              'Operações',
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: FlutterFlowTheme.of(context).secondary,
                                                                                                    fontSize: 14.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          fixedWidth: 100.0,
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Align(
                                                                                              alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                              child: Text(
                                                                                                'Título',
                                                                                                textAlign: TextAlign.start,
                                                                                                style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).secondary,
                                                                                                      fontSize: 14.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          fixedWidth: 180.0,
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Text(
                                                                                              'Frase',
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: FlutterFlowTheme.of(context).secondary,
                                                                                                    fontSize: 14.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                      dataRowBuilder: (frasesItem, frasesIndex, selected, onSelectChanged) => DataRow(
                                                                                        color: WidgetStateProperty.all(
                                                                                          frasesIndex % 2 == 0 ? FlutterFlowTheme.of(context).secondaryBackground : FlutterFlowTheme.of(context).primaryBackground,
                                                                                        ),
                                                                                        cells: [
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                dateTimeFormat(
                                                                                                  "yMd",
                                                                                                  frasesItem.createdAt,
                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                ),
                                                                                                '-',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: FlutterFlowIconButton(
                                                                                              borderRadius: 20.0,
                                                                                              borderWidth: 1.0,
                                                                                              buttonSize: 40.0,
                                                                                              icon: Icon(
                                                                                                Icons.delete_outline,
                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                size: 24.0,
                                                                                              ),
                                                                                              onPressed: () async {
                                                                                                await showModalBottomSheet(
                                                                                                  isScrollControlled: true,
                                                                                                  backgroundColor: const Color(0x18000000),
                                                                                                  enableDrag: false,
                                                                                                  context: context,
                                                                                                  builder: (context) {
                                                                                                    return WebViewAware(
                                                                                                      child: GestureDetector(
                                                                                                        onTap: () => FocusScope.of(context).unfocus(),
                                                                                                        child: Padding(
                                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                                          child: SizedBox(
                                                                                                            height: double.infinity,
                                                                                                            child: ModalDeletarFraseWidget(
                                                                                                              id: valueOrDefault<int>(
                                                                                                                frasesItem.id,
                                                                                                                0,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() {}));
                                                                                              },
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            valueOrDefault<String>(
                                                                                              frasesItem.referencia,
                                                                                              '-',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            valueOrDefault<String>(
                                                                                              frasesItem.frase,
                                                                                              '-',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ].map((c) => DataCell(c)).toList(),
                                                                                      ),
                                                                                      paginated: true,
                                                                                      selectable: false,
                                                                                      hidePaginator: false,
                                                                                      showFirstLastButtons: false,
                                                                                      headingRowHeight: 56.0,
                                                                                      dataRowHeight: 48.0,
                                                                                      columnSpacing: 20.0,
                                                                                      headingRowColor: FlutterFlowTheme.of(context).primary,
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      addHorizontalDivider: true,
                                                                                      addTopAndBottomDivider: false,
                                                                                      hideDefaultHorizontalDivider: true,
                                                                                      horizontalDividerColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      horizontalDividerThickness: 1.0,
                                                                                      addVerticalDivider: false,
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                          16.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                        0.0,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          1.0,
                                                                      height:
                                                                          760.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              const Color(0x254B5675),
                                                                          width:
                                                                              0.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(16.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                        child: Container(
                                                                                          width: 300.0,
                                                                                          height: 40.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          ),
                                                                                          child: TextFormField(
                                                                                            controller: _model.textFieldModelosTextController,
                                                                                            focusNode: _model.textFieldModelosFocusNode,
                                                                                            autofocus: false,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              labelText: 'Procurar na tabela',
                                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              alignLabelWithHint: false,
                                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              errorBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                              ),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            validator: _model.textFieldModelosTextControllerValidator.asValidator(context),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      FlutterFlowIconButton(
                                                                                        borderColor: const Color(0xFFE0E3E7),
                                                                                        borderRadius: 8.0,
                                                                                        borderWidth: 1.0,
                                                                                        buttonSize: 40.0,
                                                                                        fillColor: const Color(0x3FF16712),
                                                                                        icon: Icon(
                                                                                          Icons.search_sharp,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 20.0,
                                                                                        ),
                                                                                        onPressed: () async {
                                                                                          safeSetState(() {
                                                                                            _model.simpleSearchResults2 = TextSearch(_model.listaModelos.map((e) => e.tituloLaudo).withoutNulls.toList().map((str) => TextSearchItem.fromTerms(str, [str])).toList()).search(_model.textFieldModelosTextController.text).map((r) => r.object).toList();
                                                                                          });
                                                                                          _model.listaModelos = _model.listaModelos.where((e) => _model.simpleSearchResults2.contains(e.tituloLaudo)).toList().cast<LaudosModelosRow>();
                                                                                          safeSetState(() {});
                                                                                        },
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                    child: FFButtonWidget(
                                                                                      onPressed: () async {
                                                                                        FFAppState().conteudoLaudoEditor = '';
                                                                                        safeSetState(() {});
                                                                                        await showModalBottomSheet(
                                                                                          isScrollControlled: true,
                                                                                          backgroundColor: const Color(0x17000000),
                                                                                          enableDrag: false,
                                                                                          context: context,
                                                                                          builder: (context) {
                                                                                            return WebViewAware(
                                                                                              child: GestureDetector(
                                                                                                onTap: () => FocusScope.of(context).unfocus(),
                                                                                                child: Padding(
                                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                                  child: const SizedBox(
                                                                                                    height: double.infinity,
                                                                                                    child: ModelAdicionarModeloWidget(),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ).then((value) => safeSetState(() {}));
                                                                                      },
                                                                                      text: 'Adicionar Laudo',
                                                                                      icon: const Icon(
                                                                                        Icons.add,
                                                                                        size: 15.0,
                                                                                      ),
                                                                                      options: FFButtonOptions(
                                                                                        height: 40.0,
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              color: Colors.white,
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w300,
                                                                                            ),
                                                                                        elevation: 1.0,
                                                                                        borderSide: const BorderSide(
                                                                                          color: Colors.transparent,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            if (_model.textFieldModelosTextController.text != '')
                                                                              Container(
                                                                                height: 35.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.all(4.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                          child: Text(
                                                                                            _model.textFieldModelosTextController.text,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 15.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          safeSetState(() {
                                                                                            _model.textFieldFraseTextController?.clear();
                                                                                            _model.textFieldModelosTextController?.clear();
                                                                                          });
                                                                                          _model.listaModelos = _model.allModelos!.toList().cast<LaudosModelosRow>();
                                                                                          safeSetState(() {});
                                                                                        },
                                                                                        child: Icon(
                                                                                          Icons.close_sharp,
                                                                                          color: FlutterFlowTheme.of(context).info,
                                                                                          size: 20.0,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            Container(
                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                              height: 660.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                child: Builder(
                                                                                  builder: (context) {
                                                                                    final listadeModelosLaudos = _model.listaModelos.map((e) => e).toList().sortedList(keyOf: (e) => e.createdAt, desc: true).toList();

                                                                                    return FlutterFlowDataTable<LaudosModelosRow>(
                                                                                      controller: _model.paginatedDataTableController2,
                                                                                      data: listadeModelosLaudos,
                                                                                      columnsBuilder: (onSortChanged) => [
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Text(
                                                                                              'Adicionado em',
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: FlutterFlowTheme.of(context).secondary,
                                                                                                    fontSize: 14.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          fixedWidth: 130.0,
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Text(
                                                                                              'Operações',
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: FlutterFlowTheme.of(context).secondary,
                                                                                                    fontSize: 14.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          fixedWidth: 100.0,
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Align(
                                                                                              alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                              child: Text(
                                                                                                'Título',
                                                                                                textAlign: TextAlign.start,
                                                                                                style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).secondary,
                                                                                                      fontSize: 14.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          fixedWidth: 180.0,
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Text(
                                                                                              'Resumo',
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: FlutterFlowTheme.of(context).secondary,
                                                                                                    fontSize: 14.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Container(),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                      dataRowBuilder: (listadeModelosLaudosItem, listadeModelosLaudosIndex, selected, onSelectChanged) => DataRow(
                                                                                        color: WidgetStateProperty.all(
                                                                                          listadeModelosLaudosIndex % 2 == 0 ? FlutterFlowTheme.of(context).secondaryBackground : FlutterFlowTheme.of(context).primaryBackground,
                                                                                        ),
                                                                                        cells: [
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                dateTimeFormat(
                                                                                                  "yMd",
                                                                                                  listadeModelosLaudosItem.createdAt,
                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                ),
                                                                                                'Sem dados',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: FlutterFlowIconButton(
                                                                                              borderColor: Colors.transparent,
                                                                                              borderRadius: 20.0,
                                                                                              borderWidth: 1.0,
                                                                                              buttonSize: 40.0,
                                                                                              icon: Icon(
                                                                                                Icons.delete_outline,
                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                size: 24.0,
                                                                                              ),
                                                                                              onPressed: () async {
                                                                                                await showModalBottomSheet(
                                                                                                  isScrollControlled: true,
                                                                                                  backgroundColor: const Color(0x14000000),
                                                                                                  enableDrag: false,
                                                                                                  context: context,
                                                                                                  builder: (context) {
                                                                                                    return WebViewAware(
                                                                                                      child: GestureDetector(
                                                                                                        onTap: () => FocusScope.of(context).unfocus(),
                                                                                                        child: Padding(
                                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                                          child: SizedBox(
                                                                                                            height: double.infinity,
                                                                                                            child: ModalDeletarWidget(
                                                                                                              id: valueOrDefault<int>(
                                                                                                                listadeModelosLaudosItem.id,
                                                                                                                0,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() {}));
                                                                                              },
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            valueOrDefault<String>(
                                                                                              listadeModelosLaudosItem.tituloLaudo,
                                                                                              'Sem dados',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            valueOrDefault<String>(
                                                                                              listadeModelosLaudosItem.resumoLaudo,
                                                                                              'Sem dados',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            children: [
                                                                                              Align(
                                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                child: FlutterFlowIconButton(
                                                                                                  borderRadius: 8.0,
                                                                                                  buttonSize: 40.0,
                                                                                                  fillColor: const Color(0x00FF7900),
                                                                                                  icon: const Icon(
                                                                                                    Icons.visibility_sharp,
                                                                                                    color: Color(0xFFA3ABB3),
                                                                                                    size: 24.0,
                                                                                                  ),
                                                                                                  onPressed: () async {
                                                                                                    await showModalBottomSheet(
                                                                                                      isScrollControlled: true,
                                                                                                      backgroundColor: const Color(0x18000000),
                                                                                                      enableDrag: false,
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        return WebViewAware(
                                                                                                          child: GestureDetector(
                                                                                                            onTap: () => FocusScope.of(context).unfocus(),
                                                                                                            child: Padding(
                                                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                                                              child: SizedBox(
                                                                                                                height: double.infinity,
                                                                                                                child: ModalVerUsarModeloWidget(
                                                                                                                  conteudoLaudo: valueOrDefault<String>(
                                                                                                                    listadeModelosLaudosItem.conteudoLaudo,
                                                                                                                    'Sem dados',
                                                                                                                  ),
                                                                                                                  titulo: valueOrDefault<String>(
                                                                                                                    listadeModelosLaudosItem.tituloLaudo,
                                                                                                                    'Sem dados',
                                                                                                                  ),
                                                                                                                  id: 0,
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));
                                                                                                  },
                                                                                                ),
                                                                                              ),
                                                                                              Align(
                                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                child: FlutterFlowIconButton(
                                                                                                  borderRadius: 8.0,
                                                                                                  buttonSize: 40.0,
                                                                                                  icon: const Icon(
                                                                                                    Icons.edit_note,
                                                                                                    color: Color(0xFFA3ABB3),
                                                                                                    size: 24.0,
                                                                                                  ),
                                                                                                  onPressed: () async {
                                                                                                    await showModalBottomSheet(
                                                                                                      isScrollControlled: true,
                                                                                                      backgroundColor: const Color(0x18000000),
                                                                                                      enableDrag: false,
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        return WebViewAware(
                                                                                                          child: GestureDetector(
                                                                                                            onTap: () => FocusScope.of(context).unfocus(),
                                                                                                            child: Padding(
                                                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                                                              child: SizedBox(
                                                                                                                height: double.infinity,
                                                                                                                child: ModelEditarModeloWidget(
                                                                                                                  titulo: valueOrDefault<String>(
                                                                                                                    listadeModelosLaudosItem.tituloLaudo,
                                                                                                                    'Sem dados',
                                                                                                                  ),
                                                                                                                  resumo: valueOrDefault<String>(
                                                                                                                    listadeModelosLaudosItem.resumoLaudo,
                                                                                                                    'Sem dados',
                                                                                                                  ),
                                                                                                                  categoria: valueOrDefault<String>(
                                                                                                                    listadeModelosLaudosItem.categoriaLaudo,
                                                                                                                    'Sem dados',
                                                                                                                  ),
                                                                                                                  conteudoLaudo: valueOrDefault<String>(
                                                                                                                    listadeModelosLaudosItem.conteudoLaudo,
                                                                                                                    'Sem dados',
                                                                                                                  ),
                                                                                                                  id: valueOrDefault<int>(
                                                                                                                    listadeModelosLaudosItem.id,
                                                                                                                    0,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => safeSetState(() {}));
                                                                                                  },
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ].map((c) => DataCell(c)).toList(),
                                                                                      ),
                                                                                      paginated: true,
                                                                                      selectable: false,
                                                                                      hidePaginator: false,
                                                                                      showFirstLastButtons: false,
                                                                                      headingRowHeight: 56.0,
                                                                                      dataRowHeight: 48.0,
                                                                                      columnSpacing: 20.0,
                                                                                      headingRowColor: FlutterFlowTheme.of(context).primary,
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      addHorizontalDivider: true,
                                                                                      addTopAndBottomDivider: false,
                                                                                      hideDefaultHorizontalDivider: true,
                                                                                      horizontalDividerColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      horizontalDividerThickness: 1.0,
                                                                                      addVerticalDivider: false,
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(height: 0.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
