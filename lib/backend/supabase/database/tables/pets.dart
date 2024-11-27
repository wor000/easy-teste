import '../database.dart';

class PetsTable extends SupabaseTable<PetsRow> {
  @override
  String get tableName => 'pets';

  @override
  PetsRow createRow(Map<String, dynamic> data) => PetsRow(data);
}

class PetsRow extends SupabaseDataRow {
  PetsRow(super.data);

  @override
  SupabaseTable get table => PetsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get nascimento => getField<String>('nascimento');
  set nascimento(String? value) => setField<String>('nascimento', value);

  int? get tutorId => getField<int>('tutor_id');
  set tutorId(int? value) => setField<int>('tutor_id', value);

  String? get especie => getField<String>('especie');
  set especie(String? value) => setField<String>('especie', value);

  int? get peso => getField<int>('peso');
  set peso(int? value) => setField<int>('peso', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get racaId => getField<int>('raca_id');
  set racaId(int? value) => setField<int>('raca_id', value);

  String? get sexo => getField<String>('sexo');
  set sexo(String? value) => setField<String>('sexo', value);
}
