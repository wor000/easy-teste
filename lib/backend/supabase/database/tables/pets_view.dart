import '../database.dart';

class PetsViewTable extends SupabaseTable<PetsViewRow> {
  @override
  String get tableName => 'pets_view';

  @override
  PetsViewRow createRow(Map<String, dynamic> data) => PetsViewRow(data);
}

class PetsViewRow extends SupabaseDataRow {
  PetsViewRow(super.data);

  @override
  SupabaseTable get table => PetsViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get nascimento => getField<String>('nascimento');
  set nascimento(String? value) => setField<String>('nascimento', value);

  String? get tutorNome => getField<String>('tutor_nome');
  set tutorNome(String? value) => setField<String>('tutor_nome', value);

  String? get racaNome => getField<String>('raca_nome');
  set racaNome(String? value) => setField<String>('raca_nome', value);

  String? get especie => getField<String>('especie');
  set especie(String? value) => setField<String>('especie', value);

  int? get peso => getField<int>('peso');
  set peso(int? value) => setField<int>('peso', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get sexo => getField<String>('sexo');
  set sexo(String? value) => setField<String>('sexo', value);
}
