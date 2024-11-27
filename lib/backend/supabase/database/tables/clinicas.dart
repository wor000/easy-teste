import '../database.dart';

class ClinicasTable extends SupabaseTable<ClinicasRow> {
  @override
  String get tableName => 'clinicas';

  @override
  ClinicasRow createRow(Map<String, dynamic> data) => ClinicasRow(data);
}

class ClinicasRow extends SupabaseDataRow {
  ClinicasRow(super.data);

  @override
  SupabaseTable get table => ClinicasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get cnpj => getField<String>('cnpj');
  set cnpj(String? value) => setField<String>('cnpj', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get numero => getField<int>('numero');
  set numero(int? value) => setField<int>('numero', value);
}
