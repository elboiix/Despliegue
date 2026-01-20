// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future agregarAsignaturaAlumno(
  int idAsignatura,
  int idAlumno,
) async {
  final supabase = Supabase.instance.client;
  final data = await supabase
      .from('alumnos_asignaturas')
      .upsert({'id_usuario': idAlumno, 'id_asignatura': idAsignatura}).select();
}
