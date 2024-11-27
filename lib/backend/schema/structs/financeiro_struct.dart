// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FinanceiroStruct extends BaseStruct {
  FinanceiroStruct({
    double? receita,
    DateTime? mes,
    double? despesa,
  })  : _receita = receita,
        _mes = mes,
        _despesa = despesa;

  // "receita" field.
  double? _receita;
  double get receita => _receita ?? 0.0;
  set receita(double? val) => _receita = val;

  void incrementReceita(double amount) => receita = receita + amount;

  bool hasReceita() => _receita != null;

  // "mes" field.
  DateTime? _mes;
  DateTime? get mes => _mes;
  set mes(DateTime? val) => _mes = val;

  bool hasMes() => _mes != null;

  // "despesa" field.
  double? _despesa;
  double get despesa => _despesa ?? 0.0;
  set despesa(double? val) => _despesa = val;

  void incrementDespesa(double amount) => despesa = despesa + amount;

  bool hasDespesa() => _despesa != null;

  static FinanceiroStruct fromMap(Map<String, dynamic> data) =>
      FinanceiroStruct(
        receita: castToType<double>(data['receita']),
        mes: data['mes'] as DateTime?,
        despesa: castToType<double>(data['despesa']),
      );

  static FinanceiroStruct? maybeFromMap(dynamic data) => data is Map
      ? FinanceiroStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'receita': _receita,
        'mes': _mes,
        'despesa': _despesa,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'receita': serializeParam(
          _receita,
          ParamType.double,
        ),
        'mes': serializeParam(
          _mes,
          ParamType.DateTime,
        ),
        'despesa': serializeParam(
          _despesa,
          ParamType.double,
        ),
      }.withoutNulls;

  static FinanceiroStruct fromSerializableMap(Map<String, dynamic> data) =>
      FinanceiroStruct(
        receita: deserializeParam(
          data['receita'],
          ParamType.double,
          false,
        ),
        mes: deserializeParam(
          data['mes'],
          ParamType.DateTime,
          false,
        ),
        despesa: deserializeParam(
          data['despesa'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'FinanceiroStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FinanceiroStruct &&
        receita == other.receita &&
        mes == other.mes &&
        despesa == other.despesa;
  }

  @override
  int get hashCode => const ListEquality().hash([receita, mes, despesa]);
}

FinanceiroStruct createFinanceiroStruct({
  double? receita,
  DateTime? mes,
  double? despesa,
}) =>
    FinanceiroStruct(
      receita: receita,
      mes: mes,
      despesa: despesa,
    );
