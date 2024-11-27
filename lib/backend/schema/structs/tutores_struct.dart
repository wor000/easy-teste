// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TutoresStruct extends BaseStruct {
  TutoresStruct({
    String? nome,
    String? telefone,
    String? email,
    String? pet,
    String? endereco,
  })  : _nome = nome,
        _telefone = telefone,
        _email = email,
        _pet = pet,
        _endereco = endereco;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  set telefone(String? val) => _telefone = val;

  bool hasTelefone() => _telefone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "pet" field.
  String? _pet;
  String get pet => _pet ?? '';
  set pet(String? val) => _pet = val;

  bool hasPet() => _pet != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  set endereco(String? val) => _endereco = val;

  bool hasEndereco() => _endereco != null;

  static TutoresStruct fromMap(Map<String, dynamic> data) => TutoresStruct(
        nome: data['nome'] as String?,
        telefone: data['telefone'] as String?,
        email: data['email'] as String?,
        pet: data['pet'] as String?,
        endereco: data['endereco'] as String?,
      );

  static TutoresStruct? maybeFromMap(dynamic data) =>
      data is Map ? TutoresStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'telefone': _telefone,
        'email': _email,
        'pet': _pet,
        'endereco': _endereco,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'telefone': serializeParam(
          _telefone,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'pet': serializeParam(
          _pet,
          ParamType.String,
        ),
        'endereco': serializeParam(
          _endereco,
          ParamType.String,
        ),
      }.withoutNulls;

  static TutoresStruct fromSerializableMap(Map<String, dynamic> data) =>
      TutoresStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        telefone: deserializeParam(
          data['telefone'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        pet: deserializeParam(
          data['pet'],
          ParamType.String,
          false,
        ),
        endereco: deserializeParam(
          data['endereco'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TutoresStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TutoresStruct &&
        nome == other.nome &&
        telefone == other.telefone &&
        email == other.email &&
        pet == other.pet &&
        endereco == other.endereco;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nome, telefone, email, pet, endereco]);
}

TutoresStruct createTutoresStruct({
  String? nome,
  String? telefone,
  String? email,
  String? pet,
  String? endereco,
}) =>
    TutoresStruct(
      nome: nome,
      telefone: telefone,
      email: email,
      pet: pet,
      endereco: endereco,
    );
