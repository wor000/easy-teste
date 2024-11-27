import '../database.dart';

class LaudosPorMesTable extends SupabaseTable<LaudosPorMesRow> {
  @override
  String get tableName => 'laudos_por_mes';

  @override
  LaudosPorMesRow createRow(Map<String, dynamic> data) => LaudosPorMesRow(data);
}

class LaudosPorMesRow extends SupabaseDataRow {
  LaudosPorMesRow(super.data);

  @override
  SupabaseTable get table => LaudosPorMesTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get ano => getField<String>('ano');
  set ano(String? value) => setField<String>('ano', value);

  String? get mesAbreviado => getField<String>('mes_abreviado');
  set mesAbreviado(String? value) => setField<String>('mes_abreviado', value);

  double? get numeroMes => getField<double>('numero_mes');
  set numeroMes(double? value) => setField<double>('numero_mes', value);

  int? get totalLaudos => getField<int>('total_laudos');
  set totalLaudos(int? value) => setField<int>('total_laudos', value);
}
