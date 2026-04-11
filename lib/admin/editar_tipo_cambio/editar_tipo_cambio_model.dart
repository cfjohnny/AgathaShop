import '/flutter_flow/flutter_flow_util.dart';
import 'editar_tipo_cambio_widget.dart' show EditarTipoCambioWidget;
import 'package:flutter/material.dart';

class EditarTipoCambioModel extends FlutterFlowModel<EditarTipoCambioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtMonto widget.
  FocusNode? txtMontoFocusNode;
  TextEditingController? txtMontoTextController;
  String? Function(BuildContext, String?)? txtMontoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtMontoFocusNode?.dispose();
    txtMontoTextController?.dispose();
  }
}
