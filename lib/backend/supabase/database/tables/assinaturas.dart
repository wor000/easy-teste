import '../database.dart';

class AssinaturasTable extends SupabaseTable<AssinaturasRow> {
  @override
  String get tableName => 'assinaturas';

  @override
  AssinaturasRow createRow(Map<String, dynamic> data) => AssinaturasRow(data);
}

class AssinaturasRow extends SupabaseDataRow {
  AssinaturasRow(super.data);

  @override
  SupabaseTable get table => AssinaturasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get customerId => getField<String>('customer_id');
  set customerId(String? value) => setField<String>('customer_id', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  DateTime? get proximoVencimento => getField<DateTime>('proximo_vencimento');
  set proximoVencimento(DateTime? value) =>
      setField<DateTime>('proximo_vencimento', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get assinaturaId => getField<String>('assinatura_id');
  set assinaturaId(String? value) => setField<String>('assinatura_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
