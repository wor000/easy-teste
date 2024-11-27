import '../database.dart';

class ConvitesAssinaturasTable extends SupabaseTable<ConvitesAssinaturasRow> {
  @override
  String get tableName => 'convites_assinaturas';

  @override
  ConvitesAssinaturasRow createRow(Map<String, dynamic> data) =>
      ConvitesAssinaturasRow(data);
}

class ConvitesAssinaturasRow extends SupabaseDataRow {
  ConvitesAssinaturasRow(super.data);

  @override
  SupabaseTable get table => ConvitesAssinaturasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get assinante => getField<String>('assinante');
  set assinante(String? value) => setField<String>('assinante', value);

  String? get convidado => getField<String>('convidado');
  set convidado(String? value) => setField<String>('convidado', value);

  int? get assinaturaId => getField<int>('assinatura_id');
  set assinaturaId(int? value) => setField<int>('assinatura_id', value);
}
