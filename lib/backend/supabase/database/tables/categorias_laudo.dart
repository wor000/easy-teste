import '../database.dart';

class CategoriasLaudoTable extends SupabaseTable<CategoriasLaudoRow> {
  @override
  String get tableName => 'Categorias Laudo';

  @override
  CategoriasLaudoRow createRow(Map<String, dynamic> data) =>
      CategoriasLaudoRow(data);
}

class CategoriasLaudoRow extends SupabaseDataRow {
  CategoriasLaudoRow(super.data);

  @override
  SupabaseTable get table => CategoriasLaudoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeDaCategoria => getField<String>('nomeDaCategoria');
  set nomeDaCategoria(String? value) =>
      setField<String>('nomeDaCategoria', value);
}
