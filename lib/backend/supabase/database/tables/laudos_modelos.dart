import '../database.dart';

class LaudosModelosTable extends SupabaseTable<LaudosModelosRow> {
  @override
  String get tableName => 'laudos_modelos';

  @override
  LaudosModelosRow createRow(Map<String, dynamic> data) =>
      LaudosModelosRow(data);
}

class LaudosModelosRow extends SupabaseDataRow {
  LaudosModelosRow(super.data);

  @override
  SupabaseTable get table => LaudosModelosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get tituloLaudo => getField<String>('titulo_laudo');
  set tituloLaudo(String? value) => setField<String>('titulo_laudo', value);

  String? get resumoLaudo => getField<String>('resumo_laudo');
  set resumoLaudo(String? value) => setField<String>('resumo_laudo', value);

  String? get conteudoLaudo => getField<String>('conteudo_laudo');
  set conteudoLaudo(String? value) => setField<String>('conteudo_laudo', value);

  String? get categoriaLaudo => getField<String>('categoria_laudo');
  set categoriaLaudo(String? value) =>
      setField<String>('categoria_laudo', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
