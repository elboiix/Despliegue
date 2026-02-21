import '../database.dart';

class AlumnosAsignaturasTable extends SupabaseTable<AlumnosAsignaturasRow> {
  @override
  String get tableName => 'alumnos_asignaturas';

  @override
  AlumnosAsignaturasRow createRow(Map<String, dynamic> data) =>
      AlumnosAsignaturasRow(data);
}

class AlumnosAsignaturasRow extends SupabaseDataRow {
  AlumnosAsignaturasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AlumnosAsignaturasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get idUsuario => getField<int>('id_usuario')!;
  set idUsuario(int value) => setField<int>('id_usuario', value);

  int? get idAsignatura => getField<int>('id_asignatura');
  set idAsignatura(int? value) => setField<int>('id_asignatura', value);
}
