import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'verificacion_de_rol_model.dart';
export 'verificacion_de_rol_model.dart';

class VerificacionDeRolWidget extends StatefulWidget {
  const VerificacionDeRolWidget({super.key});

  static String routeName = 'VerificacionDeRol';
  static String routePath = '/verificacionDeRol';

  @override
  State<VerificacionDeRolWidget> createState() =>
      _VerificacionDeRolWidgetState();
}

class _VerificacionDeRolWidgetState extends State<VerificacionDeRolWidget> {
  late VerificacionDeRolModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerificacionDeRolModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (valueOrDefault<bool>(currentUserDocument?.isAdmin, false) == true) {
        context.pushNamed(HomeAdminWidget.routeName);
      } else {
        context.pushNamed(
          InicioWidget.routeName,
          queryParameters: {
            'estado': serializeParam(
              '',
              ParamType.String,
            ),
          }.withoutNulls,
        );
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
