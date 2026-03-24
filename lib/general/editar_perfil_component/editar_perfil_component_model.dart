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
  FocusNode? txtNombreFocusNode1;
  TextEditingController? txtNombreTextController1;
  String? Function(BuildContext, String?)? txtNombreTextController1Validator;
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode2;
  TextEditingController? txtNombreTextController2;
  String? Function(BuildContext, String?)? txtNombreTextController2Validator;
  // State field(s) for txtNumero widget.
  FocusNode? txtNumeroFocusNode;
  TextEditingController? txtNumeroTextController;
  String? Function(BuildContext, String?)? txtNumeroTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtNombreFocusNode1?.dispose();
    txtNombreTextController1?.dispose();

    txtNombreFocusNode2?.dispose();
    txtNombreTextController2?.dispose();

    txtNumeroFocusNode?.dispose();
    txtNumeroTextController?.dispose();
  }
}
