import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'agregar_asignatura_alumno_widget.dart'
    show AgregarAsignaturaAlumnoWidget;
import 'package:flutter/material.dart';

class AgregarAsignaturaAlumnoModel
    extends FlutterFlowModel<AgregarAsignaturaAlumnoWidget> {
  ///  Local state fields for this page.

  List<dynamic> listaAsignaturas2 = [];
  void addToListaAsignaturas2(dynamic item) => listaAsignaturas2.add(item);
  void removeFromListaAsignaturas2(dynamic item) =>
      listaAsignaturas2.remove(item);
  void removeAtIndexFromListaAsignaturas2(int index) =>
      listaAsignaturas2.removeAt(index);
  void insertAtIndexInListaAsignaturas2(int index, dynamic item) =>
      listaAsignaturas2.insert(index, item);
  void updateListaAsignaturas2AtIndex(int index, Function(dynamic) updateFn) =>
      listaAsignaturas2[index] = updateFn(listaAsignaturas2[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - listarAsignaturas] action in AgregarAsignaturaAlumno widget.
  dynamic listarAsignaturasAlumnos;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
