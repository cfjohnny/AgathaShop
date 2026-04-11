import '/flutter_flow/flutter_flow_util.dart';
import 'editar_comisiones_widget.dart' show EditarComisionesWidget;
import 'package:flutter/material.dart';

class EditarComisionesModel extends FlutterFlowModel<EditarComisionesWidget> {
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
