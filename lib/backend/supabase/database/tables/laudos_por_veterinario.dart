import '../database.dart';

class LaudosPorVeterinarioTable extends SupabaseTable<LaudosPorVeterinarioRow> {
  @override
  String get tableName => 'laudos_por_veterinario';

  @override
  LaudosPorVeterinarioRow createRow(Map<String, dynamic> data) =>
      LaudosPorVeterinarioRow(data);
}

class LaudosPorVeterinarioRow extends SupabaseDataRow {
  LaudosPorVeterinarioRow(super.data);

  @override
  SupabaseTable get table => LaudosPorVeterinarioTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get veterinarioId => getField<int>('veterinario_id');
  set veterinarioId(int? value) => setField<int>('veterinario_id', value);

  String? get veterinarioNome => getField<String>('veterinario_nome');
  set veterinarioNome(String? value) =>
      setField<String>('veterinario_nome', value);

  int? get totalLaudos => getField<int>('total_laudos');
  set totalLaudos(int? value) => setField<int>('total_laudos', value);
}
