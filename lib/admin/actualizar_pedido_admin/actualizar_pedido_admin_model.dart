import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'actualizar_pedido_admin_widget.dart' show ActualizarPedidoAdminWidget;
import 'package:flutter/material.dart';

class ActualizarPedidoAdminModel
    extends FlutterFlowModel<ActualizarPedidoAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for dpdEstado widget.
  String? dpdEstadoValue;
  FormFieldController<String>? dpdEstadoValueController;
  // State field(s) for txtComision widget.
  FocusNode? txtComisionFocusNode;
  TextEditingController? txtComisionTextController;
  String? Function(BuildContext, String?)? txtComisionTextControllerValidator;
  // State field(s) for txtEnvio widget.
  FocusNode? txtEnvioFocusNode;
  TextEditingController? txtEnvioTextController;
  String? Function(BuildContext, String?)? txtEnvioTextControllerValidator;
  // State field(s) for txtSubtotal widget.
  FocusNode? txtSubtotalFocusNode;
  TextEditingController? txtSubtotalTextController;
  String? Function(BuildContext, String?)? txtSubtotalTextControllerValidator;
  // State field(s) for txtTotal widget.
  FocusNode? txtTotalFocusNode;
  TextEditingController? txtTotalTextController;
  String? Function(BuildContext, String?)? txtTotalTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtComisionFocusNode?.dispose();
    txtComisionTextController?.dispose();

    txtEnvioFocusNode?.dispose();
    txtEnvioTextController?.dispose();

    txtSubtotalFocusNode?.dispose();
    txtSubtotalTextController?.dispose();

    txtTotalFocusNode?.dispose();
    txtTotalTextController?.dispose();
  }
}
