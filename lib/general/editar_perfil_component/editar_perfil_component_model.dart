import '/flutter_flow/flutter_flow_util.dart';
import 'editar_perfil_component_widget.dart' show EditarPerfilComponentWidget;
import 'package:flutter/material.dart';

class EditarPerfilComponentModel
    extends FlutterFlowModel<EditarPerfilComponentWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadDataIew = false;
  FFUploadedFile uploadedLocalFile_uploadDataIew =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataIew = '';

  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  // State field(s) for txtDireccion widget.
  FocusNode? txtDireccionFocusNode;
  TextEditingController? txtDireccionTextController;
  String? Function(BuildContext, String?)? txtDireccionTextControllerValidator;
  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoTextController;
  String? Function(BuildContext, String?)? txtTelefonoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtDireccionFocusNode?.dispose();
    txtDireccionTextController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoTextController?.dispose();
  }
}
