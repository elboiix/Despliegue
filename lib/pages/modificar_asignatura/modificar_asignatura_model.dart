import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'modificar_asignatura_widget.dart' show ModificarAsignaturaWidget;
import 'package:flutter/material.dart';

class ModificarAsignaturaModel
    extends FlutterFlowModel<ModificarAsignaturaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
