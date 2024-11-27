import '../database.dart';

class UsuarioTotaisTable extends SupabaseTable<UsuarioTotaisRow> {
  @override
  String get tableName => 'usuario_totais';

  @override
  UsuarioTotaisRow createRow(Map<String, dynamic> data) =>
      UsuarioTotaisRow(data);
}

class UsuarioTotaisRow extends SupabaseDataRow {
  UsuarioTotaisRow(super.data);

  @override
  SupabaseTable get table => UsuarioTotaisTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get totalClientes => getField<int>('total_clientes');
  set totalClientes(int? value) => setField<int>('total_clientes', value);

  int? get totalPets => getField<int>('total_pets');
  set totalPets(int? value) => setField<int>('total_pets', value);

  int? get totalLaudos => getField<int>('total_laudos');
  set totalLaudos(int? value) => setField<int>('total_laudos', value);

  int? get totalClinicas => getField<int>('total_clinicas');
  set totalClinicas(int? value) => setField<int>('total_clinicas', value);

  double? get valorTotalLaudos => getField<double>('valor_total_laudos');
  set valorTotalLaudos(double? value) =>
      setField<double>('valor_total_laudos', value);

  int? get totalVeterinarios => getField<int>('total_veterinarios');
  set totalVeterinarios(int? value) =>
      setField<int>('total_veterinarios', value);
}
