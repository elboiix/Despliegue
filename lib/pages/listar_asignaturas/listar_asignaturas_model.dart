import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'listar_asignaturas_widget.dart' show ListarAsignaturasWidget;
import 'package:flutter/material.dart';

class ListarAsignaturasModel extends FlutterFlowModel<ListarAsignaturasWidget> {
  ///  Local state fields for this page.

  List<dynamic> listaAsignaturasLocal = [];
  void addToListaAsignaturasLocal(dynamic item) =>
      listaAsignaturasLocal.add(item);
  void removeFromListaAsignaturasLocal(dynamic item) =>
      listaAsignaturasLocal.remove(item);
  void removeAtIndexFromListaAsignaturasLocal(int index) =>
      listaAsignaturasLocal.removeAt(index);
  void insertAtIndexInListaAsignaturasLocal(int index, dynamic item) =>
      listaAsignaturasLocal.insert(index, item);
  void updateListaAsignaturasLocalAtIndex(
          int index, Function(dynamic) updateFn) =>
      listaAsignaturasLocal[index] = updateFn(listaAsignaturasLocal[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - listarAsignaturas] action in ListarAsignaturas widget.
  dynamic listaAsignaturas;
  // Stores action output result for [Custom Action - listarAsignaturas] action in Icon widget.
  dynamic asignaturasListadosBorrar;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
