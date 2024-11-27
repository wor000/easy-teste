import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'logo_boto_home_model.dart';
export 'logo_boto_home_model.dart';

class LogoBotoHomeWidget extends StatefulWidget {
  const LogoBotoHomeWidget({super.key});

  @override
  State<LogoBotoHomeWidget> createState() => _LogoBotoHomeWidgetState();
}

class _LogoBotoHomeWidgetState extends State<LogoBotoHomeWidget> {
  late LogoBotoHomeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoBotoHomeModel());

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
      height: 90.0,
      decoration: BoxDecoration(
        color: const Color(0xFFFF7900),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (responsiveVisibility(
              context: context,
              tabletLandscape: false,
              desktop: false,
            ))
              Container(
                width: 44.0,
                height: 44.0,
                decoration: const BoxDecoration(),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 8.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.menu,
                    color: FlutterFlowTheme.of(context).secondary,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 14.0, 24.0, 14.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Logo_easy_laudos.png',
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
