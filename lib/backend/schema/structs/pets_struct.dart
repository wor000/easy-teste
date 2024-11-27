// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PetsStruct extends BaseStruct {
  PetsStruct({
    String? nomePet,
    String? especiePet,
    String? racaPet,
    int? anoNascimentoPet,
    double? pesoPet,
    String? sexoPet,
  })  : _nomePet = nomePet,
        _especiePet = especiePet,
        _racaPet = racaPet,
        _anoNascimentoPet = anoNascimentoPet,
        _pesoPet = pesoPet,
        _sexoPet = sexoPet;

  // "nome-pet" field.
  String? _nomePet;
  String get nomePet => _nomePet ?? '';
  set nomePet(String? val) => _nomePet = val;

  bool hasNomePet() => _nomePet != null;

  // "especie-pet" field.
  String? _especiePet;
  String get especiePet => _especiePet ?? '';
  set especiePet(String? val) => _especiePet = val;

  bool hasEspeciePet() => _especiePet != null;

  // "raca-pet" field.
  String? _racaPet;
  String get racaPet => _racaPet ?? '';
  set racaPet(String? val) => _racaPet = val;

  bool hasRacaPet() => _racaPet != null;

  // "ano-nascimento-pet" field.
  int? _anoNascimentoPet;
  int get anoNascimentoPet => _anoNascimentoPet ?? 0;
  set anoNascimentoPet(int? val) => _anoNascimentoPet = val;

  void incrementAnoNascimentoPet(int amount) =>
      anoNascimentoPet = anoNascimentoPet + amount;

  bool hasAnoNascimentoPet() => _anoNascimentoPet != null;

  // "peso-pet" field.
  double? _pesoPet;
  double get pesoPet => _pesoPet ?? 0.0;
  set pesoPet(double? val) => _pesoPet = val;

  void incrementPesoPet(double amount) => pesoPet = pesoPet + amount;

  bool hasPesoPet() => _pesoPet != null;

  // "sexo-pet" field.
  String? _sexoPet;
  String get sexoPet => _sexoPet ?? '';
  set sexoPet(String? val) => _sexoPet = val;

  bool hasSexoPet() => _sexoPet != null;

  static PetsStruct fromMap(Map<String, dynamic> data) => PetsStruct(
        nomePet: data['nome-pet'] as String?,
        especiePet: data['especie-pet'] as String?,
        racaPet: data['raca-pet'] as String?,
        anoNascimentoPet: castToType<int>(data['ano-nascimento-pet']),
        pesoPet: castToType<double>(data['peso-pet']),
        sexoPet: data['sexo-pet'] as String?,
      );

  static PetsStruct? maybeFromMap(dynamic data) =>
      data is Map ? PetsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome-pet': _nomePet,
        'especie-pet': _especiePet,
        'raca-pet': _racaPet,
        'ano-nascimento-pet': _anoNascimentoPet,
        'peso-pet': _pesoPet,
        'sexo-pet': _sexoPet,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome-pet': serializeParam(
          _nomePet,
          ParamType.String,
        ),
        'especie-pet': serializeParam(
          _especiePet,
          ParamType.String,
        ),
        'raca-pet': serializeParam(
          _racaPet,
          ParamType.String,
        ),
        'ano-nascimento-pet': serializeParam(
          _anoNascimentoPet,
          ParamType.int,
        ),
        'peso-pet': serializeParam(
          _pesoPet,
          ParamType.double,
        ),
        'sexo-pet': serializeParam(
          _sexoPet,
          ParamType.String,
        ),
      }.withoutNulls;

  static PetsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PetsStruct(
        nomePet: deserializeParam(
          data['nome-pet'],
          ParamType.String,
          false,
        ),
        especiePet: deserializeParam(
          data['especie-pet'],
          ParamType.String,
          false,
        ),
        racaPet: deserializeParam(
          data['raca-pet'],
          ParamType.String,
          false,
        ),
        anoNascimentoPet: deserializeParam(
          data['ano-nascimento-pet'],
          ParamType.int,
          false,
        ),
        pesoPet: deserializeParam(
          data['peso-pet'],
          ParamType.double,
          false,
        ),
        sexoPet: deserializeParam(
          data['sexo-pet'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PetsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PetsStruct &&
        nomePet == other.nomePet &&
        especiePet == other.especiePet &&
        racaPet == other.racaPet &&
        anoNascimentoPet == other.anoNascimentoPet &&
        pesoPet == other.pesoPet &&
        sexoPet == other.sexoPet;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([nomePet, especiePet, racaPet, anoNascimentoPet, pesoPet, sexoPet]);
}

PetsStruct createPetsStruct({
  String? nomePet,
  String? especiePet,
  String? racaPet,
  int? anoNascimentoPet,
  double? pesoPet,
  String? sexoPet,
}) =>
    PetsStruct(
      nomePet: nomePet,
      especiePet: especiePet,
      racaPet: racaPet,
      anoNascimentoPet: anoNascimentoPet,
      pesoPet: pesoPet,
      sexoPet: sexoPet,
    );
