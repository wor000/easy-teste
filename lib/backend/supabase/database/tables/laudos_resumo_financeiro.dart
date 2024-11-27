import '../database.dart';

class LaudosResumoFinanceiroTable
    extends SupabaseTable<LaudosResumoFinanceiroRow> {
  @override
  String get tableName => 'laudos_resumo_financeiro';

  @override
  LaudosResumoFinanceiroRow createRow(Map<String, dynamic> data) =>
      LaudosResumoFinanceiroRow(data);
}

class LaudosResumoFinanceiroRow extends SupabaseDataRow {
  LaudosResumoFinanceiroRow(super.data);

  @override
  SupabaseTable get table => LaudosResumoFinanceiroTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get valorTotalExames => getField<double>('valor_total_exames');
  set valorTotalExames(double? value) =>
      setField<double>('valor_total_exames', value);

  double? get valorTotalRepasseReceber =>
      getField<double>('valor_total_repasse_receber');
  set valorTotalRepasseReceber(double? value) =>
      setField<double>('valor_total_repasse_receber', value);

  double? get valorTotalRepassePagar =>
      getField<double>('valor_total_repasse_pagar');
  set valorTotalRepassePagar(double? value) =>
      setField<double>('valor_total_repasse_pagar', value);
}
