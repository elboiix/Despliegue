import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'listar_alumnos_widget.dart' show ListarAlumnosWidget;
import 'package:flutter/material.dart';

class ListarAlumnosModel extends FlutterFlowModel<ListarAlumnosWidget> {
  ///  Local state fields for this page.

  List<dynamic> listaAlumnos = [];
  void addToListaAlumnos(dynamic item) => listaAlumnos.add(item);
  void removeFromListaAlumnos(dynamic item) => listaAlumnos.remove(item);
  void removeAtIndexFromListaAlumnos(int index) => listaAlumnos.removeAt(index);
  void insertAtIndexInListaAlumnos(int index, dynamic item) =>
      listaAlumnos.insert(index, item);
  void updateListaAlumnosAtIndex(int index, Function(dynamic) updateFn) =>
      listaAlumnos[index] = updateFn(listaAlumnos[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - listarAlumnos] action in ListarAlumnos widget.
  List<dynamic>? alumnosListados;
  // Stores action output result for [Custom Action - listarAlumnos] action in Icon widget.
  List<dynamic>? alumnosListadosBorrar;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
