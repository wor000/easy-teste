// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtPetsCadastroStruct extends BaseStruct {
  DtPetsCadastroStruct({
    String? nome,
    String? especie,
    String? nascimento,
    String? sexo,
    int? peso,
    int? racaId,
    int? tutorId,
    int? userId,
  })  : _nome = nome,
        _especie = especie,
        _nascimento = nascimento,
        _sexo = sexo,
        _peso = peso,
        _racaId = racaId,
        _tutorId = tutorId,
        _userId = userId;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "especie" field.
  String? _especie;
  String get especie => _especie ?? '';
  set especie(String? val) => _especie = val;

  bool hasEspecie() => _especie != null;

  // "nascimento" field.
  String? _nascimento;
  String get nascimento => _nascimento ?? '';
  set nascimento(String? val) => _nascimento = val;

  bool hasNascimento() => _nascimento != null;

  // "sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  set sexo(String? val) => _sexo = val;

  bool hasSexo() => _sexo != null;

  // "peso" field.
  int? _peso;
  int get peso => _peso ?? 0;
  set peso(int? val) => _peso = val;

  void incrementPeso(int amount) => peso = peso + amount;

  bool hasPeso() => _peso != null;

  // "raca_id" field.
  int? _racaId;
  int get racaId => _racaId ?? 0;
  set racaId(int? val) => _racaId = val;

  void incrementRacaId(int amount) => racaId = racaId + amount;

  bool hasRacaId() => _racaId != null;

  // "tutor_id" field.
  int? _tutorId;
  int get tutorId => _tutorId ?? 0;
  set tutorId(int? val) => _tutorId = val;

  void incrementTutorId(int amount) => tutorId = tutorId + amount;

  bool hasTutorId() => _tutorId != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  static DtPetsCadastroStruct fromMap(Map<String, dynamic> data) =>
      DtPetsCadastroStruct(
        nome: data['nome'] as String?,
        especie: data['especie'] as String?,
        nascimento: data['nascimento'] as String?,
        sexo: data['sexo'] as String?,
        peso: castToType<int>(data['peso']),
        racaId: castToType<int>(data['raca_id']),
        tutorId: castToType<int>(data['tutor_id']),
        userId: castToType<int>(data['user_id']),
      );

  static DtPetsCadastroStruct? maybeFromMap(dynamic data) => data is Map
      ? DtPetsCadastroStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'especie': _especie,
        'nascimento': _nascimento,
        'sexo': _sexo,
        'peso': _peso,
        'raca_id': _racaId,
        'tutor_id': _tutorId,
        'user_id': _userId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'especie': serializeParam(
          _especie,
          ParamType.String,
        ),
        'nascimento': serializeParam(
          _nascimento,
          ParamType.String,
        ),
        'sexo': serializeParam(
          _sexo,
          ParamType.String,
        ),
        'peso': serializeParam(
          _peso,
          ParamType.int,
        ),
        'raca_id': serializeParam(
          _racaId,
          ParamType.int,
        ),
        'tutor_id': serializeParam(
          _tutorId,
          ParamType.int,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
      }.withoutNulls;

  static DtPetsCadastroStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtPetsCadastroStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        especie: deserializeParam(
          data['especie'],
          ParamType.String,
          false,
        ),
        nascimento: deserializeParam(
          data['nascimento'],
          ParamType.String,
          false,
        ),
        sexo: deserializeParam(
          data['sexo'],
          ParamType.String,
          false,
        ),
        peso: deserializeParam(
          data['peso'],
          ParamType.int,
          false,
        ),
        racaId: deserializeParam(
          data['raca_id'],
          ParamType.int,
          false,
        ),
        tutorId: deserializeParam(
          data['tutor_id'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DtPetsCadastroStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtPetsCadastroStruct &&
        nome == other.nome &&
        especie == other.especie &&
        nascimento == other.nascimento &&
        sexo == other.sexo &&
        peso == other.peso &&
        racaId == other.racaId &&
        tutorId == other.tutorId &&
        userId == other.userId;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([nome, especie, nascimento, sexo, peso, racaId, tutorId, userId]);
}

DtPetsCadastroStruct createDtPetsCadastroStruct({
  String? nome,
  String? especie,
  String? nascimento,
  String? sexo,
  int? peso,
  int? racaId,
  int? tutorId,
  int? userId,
}) =>
    DtPetsCadastroStruct(
      nome: nome,
      especie: especie,
      nascimento: nascimento,
      sexo: sexo,
      peso: peso,
      racaId: racaId,
      tutorId: tutorId,
      userId: userId,
    );
