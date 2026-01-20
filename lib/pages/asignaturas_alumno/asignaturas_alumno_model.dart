import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'asignaturas_alumno_widget.dart' show AsignaturasAlumnoWidget;
import 'package:flutter/material.dart';

class AsignaturasAlumnoModel extends FlutterFlowModel<AsignaturasAlumnoWidget> {
  ///  Local state fields for this page.

  List<dynamic> listaAsignaturasDelAlumno = [];
  void addToListaAsignaturasDelAlumno(dynamic item) =>
      listaAsignaturasDelAlumno.add(item);
  void removeFromListaAsignaturasDelAlumno(dynamic item) =>
      listaAsignaturasDelAlumno.remove(item);
  void removeAtIndexFromListaAsignaturasDelAlumno(int index) =>
      listaAsignaturasDelAlumno.removeAt(index);
  void insertAtIndexInListaAsignaturasDelAlumno(int index, dynamic item) =>
      listaAsignaturasDelAlumno.insert(index, item);
  void updateListaAsignaturasDelAlumnoAtIndex(
          int index, Function(dynamic) updateFn) =>
      listaAsignaturasDelAlumno[index] =
          updateFn(listaAsignaturasDelAlumno[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
