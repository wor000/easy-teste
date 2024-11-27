// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadosLaudoStruct extends BaseStruct {
  DadosLaudoStruct({
    String? idUser,
    int? idPaciente,
    int? idResponsavel,
    int? idClinica,
    int? idVeterinario,
    String? responsavel,
    String? paciente,
    String? especie,
    String? raca,
    String? idade,
    String? veterinario,
    String? clinica,
    String? tipo,
    String? conteudoLaudo,
  })  : _idUser = idUser,
        _idPaciente = idPaciente,
        _idResponsavel = idResponsavel,
        _idClinica = idClinica,
        _idVeterinario = idVeterinario,
        _responsavel = responsavel,
        _paciente = paciente,
        _especie = especie,
        _raca = raca,
        _idade = idade,
        _veterinario = veterinario,
        _clinica = clinica,
        _tipo = tipo,
        _conteudoLaudo = conteudoLaudo;

  // "id_user" field.
  String? _idUser;
  String get idUser => _idUser ?? '';
  set idUser(String? val) => _idUser = val;

  bool hasIdUser() => _idUser != null;

  // "id_paciente" field.
  int? _idPaciente;
  int get idPaciente => _idPaciente ?? 0;
  set idPaciente(int? val) => _idPaciente = val;

  void incrementIdPaciente(int amount) => idPaciente = idPaciente + amount;

  bool hasIdPaciente() => _idPaciente != null;

  // "id_responsavel" field.
  int? _idResponsavel;
  int get idResponsavel => _idResponsavel ?? 0;
  set idResponsavel(int? val) => _idResponsavel = val;

  void incrementIdResponsavel(int amount) =>
      idResponsavel = idResponsavel + amount;

  bool hasIdResponsavel() => _idResponsavel != null;

  // "id_clinica" field.
  int? _idClinica;
  int get idClinica => _idClinica ?? 0;
  set idClinica(int? val) => _idClinica = val;

  void incrementIdClinica(int amount) => idClinica = idClinica + amount;

  bool hasIdClinica() => _idClinica != null;

  // "id_veterinario" field.
  int? _idVeterinario;
  int get idVeterinario => _idVeterinario ?? 0;
  set idVeterinario(int? val) => _idVeterinario = val;

  void incrementIdVeterinario(int amount) =>
      idVeterinario = idVeterinario + amount;

  bool hasIdVeterinario() => _idVeterinario != null;

  // "responsavel" field.
  String? _responsavel;
  String get responsavel => _responsavel ?? '';
  set responsavel(String? val) => _responsavel = val;

  bool hasResponsavel() => _responsavel != null;

  // "paciente" field.
  String? _paciente;
  String get paciente => _paciente ?? '';
  set paciente(String? val) => _paciente = val;

  bool hasPaciente() => _paciente != null;

  // "especie" field.
  String? _especie;
  String get especie => _especie ?? '';
  set especie(String? val) => _especie = val;

  bool hasEspecie() => _especie != null;

  // "raca" field.
  String? _raca;
  String get raca => _raca ?? '';
  set raca(String? val) => _raca = val;

  bool hasRaca() => _raca != null;

  // "idade" field.
  String? _idade;
  String get idade => _idade ?? '';
  set idade(String? val) => _idade = val;

  bool hasIdade() => _idade != null;

  // "veterinario" field.
  String? _veterinario;
  String get veterinario => _veterinario ?? '';
  set veterinario(String? val) => _veterinario = val;

  bool hasVeterinario() => _veterinario != null;

  // "clinica" field.
  String? _clinica;
  String get clinica => _clinica ?? '';
  set clinica(String? val) => _clinica = val;

  bool hasClinica() => _clinica != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

  // "conteudoLaudo" field.
  String? _conteudoLaudo;
  String get conteudoLaudo => _conteudoLaudo ?? '';
  set conteudoLaudo(String? val) => _conteudoLaudo = val;

  bool hasConteudoLaudo() => _conteudoLaudo != null;

  static DadosLaudoStruct fromMap(Map<String, dynamic> data) =>
      DadosLaudoStruct(
        idUser: data['id_user'] as String?,
        idPaciente: castToType<int>(data['id_paciente']),
        idResponsavel: castToType<int>(data['id_responsavel']),
        idClinica: castToType<int>(data['id_clinica']),
        idVeterinario: castToType<int>(data['id_veterinario']),
        responsavel: data['responsavel'] as String?,
        paciente: data['paciente'] as String?,
        especie: data['especie'] as String?,
        raca: data['raca'] as String?,
        idade: data['idade'] as String?,
        veterinario: data['veterinario'] as String?,
        clinica: data['clinica'] as String?,
        tipo: data['tipo'] as String?,
        conteudoLaudo: data['conteudoLaudo'] as String?,
      );

  static DadosLaudoStruct? maybeFromMap(dynamic data) => data is Map
      ? DadosLaudoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id_user': _idUser,
        'id_paciente': _idPaciente,
        'id_responsavel': _idResponsavel,
        'id_clinica': _idClinica,
        'id_veterinario': _idVeterinario,
        'responsavel': _responsavel,
        'paciente': _paciente,
        'especie': _especie,
        'raca': _raca,
        'idade': _idade,
        'veterinario': _veterinario,
        'clinica': _clinica,
        'tipo': _tipo,
        'conteudoLaudo': _conteudoLaudo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_user': serializeParam(
          _idUser,
          ParamType.String,
        ),
        'id_paciente': serializeParam(
          _idPaciente,
          ParamType.int,
        ),
        'id_responsavel': serializeParam(
          _idResponsavel,
          ParamType.int,
        ),
        'id_clinica': serializeParam(
          _idClinica,
          ParamType.int,
        ),
        'id_veterinario': serializeParam(
          _idVeterinario,
          ParamType.int,
        ),
        'responsavel': serializeParam(
          _responsavel,
          ParamType.String,
        ),
        'paciente': serializeParam(
          _paciente,
          ParamType.String,
        ),
        'especie': serializeParam(
          _especie,
          ParamType.String,
        ),
        'raca': serializeParam(
          _raca,
          ParamType.String,
        ),
        'idade': serializeParam(
          _idade,
          ParamType.String,
        ),
        'veterinario': serializeParam(
          _veterinario,
          ParamType.String,
        ),
        'clinica': serializeParam(
          _clinica,
          ParamType.String,
        ),
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'conteudoLaudo': serializeParam(
          _conteudoLaudo,
          ParamType.String,
        ),
      }.withoutNulls;

  static DadosLaudoStruct fromSerializableMap(Map<String, dynamic> data) =>
      DadosLaudoStruct(
        idUser: deserializeParam(
          data['id_user'],
          ParamType.String,
          false,
        ),
        idPaciente: deserializeParam(
          data['id_paciente'],
          ParamType.int,
          false,
        ),
        idResponsavel: deserializeParam(
          data['id_responsavel'],
          ParamType.int,
          false,
        ),
        idClinica: deserializeParam(
          data['id_clinica'],
          ParamType.int,
          false,
        ),
        idVeterinario: deserializeParam(
          data['id_veterinario'],
          ParamType.int,
          false,
        ),
        responsavel: deserializeParam(
          data['responsavel'],
          ParamType.String,
          false,
        ),
        paciente: deserializeParam(
          data['paciente'],
          ParamType.String,
          false,
        ),
        especie: deserializeParam(
          data['especie'],
          ParamType.String,
          false,
        ),
        raca: deserializeParam(
          data['raca'],
          ParamType.String,
          false,
        ),
        idade: deserializeParam(
          data['idade'],
          ParamType.String,
          false,
        ),
        veterinario: deserializeParam(
          data['veterinario'],
          ParamType.String,
          false,
        ),
        clinica: deserializeParam(
          data['clinica'],
          ParamType.String,
          false,
        ),
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
        conteudoLaudo: deserializeParam(
          data['conteudoLaudo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DadosLaudoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DadosLaudoStruct &&
        idUser == other.idUser &&
        idPaciente == other.idPaciente &&
        idResponsavel == other.idResponsavel &&
        idClinica == other.idClinica &&
        idVeterinario == other.idVeterinario &&
        responsavel == other.responsavel &&
        paciente == other.paciente &&
        especie == other.especie &&
        raca == other.raca &&
        idade == other.idade &&
        veterinario == other.veterinario &&
        clinica == other.clinica &&
        tipo == other.tipo &&
        conteudoLaudo == other.conteudoLaudo;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idUser,
        idPaciente,
        idResponsavel,
        idClinica,
        idVeterinario,
        responsavel,
        paciente,
        especie,
        raca,
        idade,
        veterinario,
        clinica,
        tipo,
        conteudoLaudo
      ]);
}

DadosLaudoStruct createDadosLaudoStruct({
  String? idUser,
  int? idPaciente,
  int? idResponsavel,
  int? idClinica,
  int? idVeterinario,
  String? responsavel,
  String? paciente,
  String? especie,
  String? raca,
  String? idade,
  String? veterinario,
  String? clinica,
  String? tipo,
  String? conteudoLaudo,
}) =>
    DadosLaudoStruct(
      idUser: idUser,
      idPaciente: idPaciente,
      idResponsavel: idResponsavel,
      idClinica: idClinica,
      idVeterinario: idVeterinario,
      responsavel: responsavel,
      paciente: paciente,
      especie: especie,
      raca: raca,
      idade: idade,
      veterinario: veterinario,
      clinica: clinica,
      tipo: tipo,
      conteudoLaudo: conteudoLaudo,
    );
