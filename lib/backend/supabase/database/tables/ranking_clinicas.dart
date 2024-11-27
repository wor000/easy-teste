import '../database.dart';

class RankingClinicasTable extends SupabaseTable<RankingClinicasRow> {
  @override
  String get tableName => 'ranking_clinicas';

  @override
  RankingClinicasRow createRow(Map<String, dynamic> data) =>
      RankingClinicasRow(data);
}

class RankingClinicasRow extends SupabaseDataRow {
  RankingClinicasRow(super.data);

  @override
  SupabaseTable get table => RankingClinicasTable();

  int? get clinicaId => getField<int>('clinica_id');
  set clinicaId(int? value) => setField<int>('clinica_id', value);

  String? get clinicaNome => getField<String>('clinica_nome');
  set clinicaNome(String? value) => setField<String>('clinica_nome', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get totalLaudos => getField<int>('total_laudos');
  set totalLaudos(int? value) => setField<int>('total_laudos', value);
}
