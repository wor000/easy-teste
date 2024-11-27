import '../database.dart';

class LaudosDetalhadosTable extends SupabaseTable<LaudosDetalhadosRow> {
  @override
  String get tableName => 'laudos_detalhados';

  @override
  LaudosDetalhadosRow createRow(Map<String, dynamic> data) =>
      LaudosDetalhadosRow(data);
}

class LaudosDetalhadosRow extends SupabaseDataRow {
  LaudosDetalhadosRow(super.data);

  @override
  SupabaseTable get table => LaudosDetalhadosTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get dataExame => getField<DateTime>('data_exame');
  set dataExame(DateTime? value) => setField<DateTime>('data_exame', value);

  String? get nomeResponsavel => getField<String>('nome_responsavel');
  set nomeResponsavel(String? value) =>
      setField<String>('nome_responsavel', value);

  String? get nomePaciente => getField<String>('nome_paciente');
  set nomePaciente(String? value) => setField<String>('nome_paciente', value);

  String? get nomeClinica => getField<String>('nome_clinica');
  set nomeClinica(String? value) => setField<String>('nome_clinica', value);

  double? get valorExame => getField<double>('valor_exame');
  set valorExame(double? value) => setField<double>('valor_exame', value);

  double? get valorRepasse => getField<double>('valor_repasse');
  set valorRepasse(double? value) => setField<double>('valor_repasse', value);

  String? get naturezaOperacao => getField<String>('natureza_operacao');
  set naturezaOperacao(String? value) =>
      setField<String>('natureza_operacao', value);

  String? get pagamentoForma => getField<String>('pagamento_forma');
  set pagamentoForma(String? value) =>
      setField<String>('pagamento_forma', value);

  String? get statusLaudo => getField<String>('status_laudo');
  set statusLaudo(String? value) => setField<String>('status_laudo', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
