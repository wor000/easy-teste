import '../database.dart';

class VeterinariosTable extends SupabaseTable<VeterinariosRow> {
  @override
  String get tableName => 'veterinarios';

  @override
  VeterinariosRow createRow(Map<String, dynamic> data) => VeterinariosRow(data);
}

class VeterinariosRow extends SupabaseDataRow {
  VeterinariosRow(super.data);

  @override
  SupabaseTable get table => VeterinariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idClinica => getField<int>('id_clinica');
  set idClinica(int? value) => setField<int>('id_clinica', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get crmv => getField<String>('crmv');
  set crmv(String? value) => setField<String>('crmv', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get endereco => getField<String>('endereço');
  set endereco(String? value) => setField<String>('endereço', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
