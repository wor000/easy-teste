import '../database.dart';

class MapeamentoDeCamposTable extends SupabaseTable<MapeamentoDeCamposRow> {
  @override
  String get tableName => 'Mapeamento de Campos';

  @override
  MapeamentoDeCamposRow createRow(Map<String, dynamic> data) =>
      MapeamentoDeCamposRow(data);
}

class MapeamentoDeCamposRow extends SupabaseDataRow {
  MapeamentoDeCamposRow(super.data);

  @override
  SupabaseTable get table => MapeamentoDeCamposTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomedoCampo => getField<String>('NomedoCampo');
  set nomedoCampo(String? value) => setField<String>('NomedoCampo', value);

  String? get tipo => getField<String>('Tipo');
  set tipo(String? value) => setField<String>('Tipo', value);

  int get grupo => getField<int>('Grupo')!;
  set grupo(int value) => setField<int>('Grupo', value);

  String? get valor => getField<String>('valor');
  set valor(String? value) => setField<String>('valor', value);
}
