import '../database.dart';

class AlumnosTable extends SupabaseTable<AlumnosRow> {
  @override
  String get tableName => 'alumnos';

  @override
  AlumnosRow createRow(Map<String, dynamic> data) => AlumnosRow(data);
}

class AlumnosRow extends SupabaseDataRow {
  AlumnosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AlumnosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nombre => getField<String>('nombre')!;
  set nombre(String value) => setField<String>('nombre', value);

  String? get apellidos => getField<String>('apellidos');
  set apellidos(String? value) => setField<String>('apellidos', value);
}
