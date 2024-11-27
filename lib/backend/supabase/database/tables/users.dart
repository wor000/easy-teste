import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(super.data);

  @override
  SupabaseTable get table => UsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String get tipo => getField<String>('tipo')!;
  set tipo(String value) => setField<String>('tipo', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get fotoUrl => getField<String>('foto_url');
  set fotoUrl(String? value) => setField<String>('foto_url', value);

  String? get asaasId => getField<String>('asaas_id');
  set asaasId(String? value) => setField<String>('asaas_id', value);

  int? get cep => getField<int>('cep');
  set cep(int? value) => setField<int>('cep', value);

  String? get rua => getField<String>('rua');
  set rua(String? value) => setField<String>('rua', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  int? get numero => getField<int>('numero');
  set numero(int? value) => setField<int>('numero', value);

  String? get complemento => getField<String>('complemento');
  set complemento(String? value) => setField<String>('complemento', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get marcaUrl => getField<String>('marca_url');
  set marcaUrl(String? value) => setField<String>('marca_url', value);

  String? get assinaturaUrl => getField<String>('assinatura_url');
  set assinaturaUrl(String? value) => setField<String>('assinatura_url', value);

  String? get redeSocial => getField<String>('rede_social');
  set redeSocial(String? value) => setField<String>('rede_social', value);

  String? get cabecalhoLaudo => getField<String>('cabecalho_laudo');
  set cabecalhoLaudo(String? value) =>
      setField<String>('cabecalho_laudo', value);

  String? get infAdicional => getField<String>('inf_adicional');
  set infAdicional(String? value) => setField<String>('inf_adicional', value);

  int? get assinaturaId => getField<int>('assinatura_id');
  set assinaturaId(int? value) => setField<int>('assinatura_id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
