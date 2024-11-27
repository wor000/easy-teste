import '../database.dart';

class LaudosTable extends SupabaseTable<LaudosRow> {
  @override
  String get tableName => 'laudos';

  @override
  LaudosRow createRow(Map<String, dynamic> data) => LaudosRow(data);
}

class LaudosRow extends SupabaseDataRow {
  LaudosRow(super.data);

  @override
  SupabaseTable get table => LaudosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get laudoUrl => getField<String>('laudo_url')!;
  set laudoUrl(String value) => setField<String>('laudo_url', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get valorCobrado => getField<double>('valor_cobrado');
  set valorCobrado(double? value) => setField<double>('valor_cobrado', value);

  double? get valorRepasse => getField<double>('valor_repasse');
  set valorRepasse(double? value) => setField<double>('valor_repasse', value);

  String? get pagamentoForma => getField<String>('pagamento_forma');
  set pagamentoForma(String? value) =>
      setField<String>('pagamento_forma', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  String? get tipoRepassse => getField<String>('tipo_repassse');
  set tipoRepassse(String? value) => setField<String>('tipo_repassse', value);

  int? get responsavelId => getField<int>('responsavel_id');
  set responsavelId(int? value) => setField<int>('responsavel_id', value);

  int? get pacienteId => getField<int>('paciente_id');
  set pacienteId(int? value) => setField<int>('paciente_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get clinicaId => getField<int>('clinica_id');
  set clinicaId(int? value) => setField<int>('clinica_id', value);

  String? get statusLaudo => getField<String>('status_laudo');
  set statusLaudo(String? value) => setField<String>('status_laudo', value);

  String? get etapa => getField<String>('etapa');
  set etapa(String? value) => setField<String>('etapa', value);

  int? get veterinarioId => getField<int>('veterinario_id');
  set veterinarioId(int? value) => setField<int>('veterinario_id', value);

  String? get imagesLaudoHtml => getField<String>('images_laudo_html');
  set imagesLaudoHtml(String? value) =>
      setField<String>('images_laudo_html', value);

  String? get laudoHtml => getField<String>('laudo_html');
  set laudoHtml(String? value) => setField<String>('laudo_html', value);

  List<String> get listaImagesLink => getListField<String>('Lista_images_link');
  set listaImagesLink(List<String>? value) =>
      setListField<String>('Lista_images_link', value);
}
