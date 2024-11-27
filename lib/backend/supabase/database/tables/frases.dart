import '../database.dart';

class FrasesTable extends SupabaseTable<FrasesRow> {
  @override
  String get tableName => 'frases';

  @override
  FrasesRow createRow(Map<String, dynamic> data) => FrasesRow(data);
}

class FrasesRow extends SupabaseDataRow {
  FrasesRow(super.data);

  @override
  SupabaseTable get table => FrasesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get frase => getField<String>('frase')!;
  set frase(String value) => setField<String>('frase', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get referencia => getField<String>('referencia');
  set referencia(String? value) => setField<String>('referencia', value);
}
