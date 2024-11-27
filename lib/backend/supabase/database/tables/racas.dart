import '../database.dart';

class RacasTable extends SupabaseTable<RacasRow> {
  @override
  String get tableName => 'racas';

  @override
  RacasRow createRow(Map<String, dynamic> data) => RacasRow(data);
}

class RacasRow extends SupabaseDataRow {
  RacasRow(super.data);

  @override
  SupabaseTable get table => RacasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get raca => getField<String>('raca');
  set raca(String? value) => setField<String>('raca', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
