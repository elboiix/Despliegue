import '../database.dart';

class PersonaTable extends SupabaseTable<PersonaRow> {
  @override
  String get tableName => 'Persona';

  @override
  PersonaRow createRow(Map<String, dynamic> data) => PersonaRow(data);
}

class PersonaRow extends SupabaseDataRow {
  PersonaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PersonaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
