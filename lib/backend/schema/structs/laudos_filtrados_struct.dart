// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LaudosFiltradosStruct extends BaseStruct {
  LaudosFiltradosStruct({
    int? laudoId,
    String? userId,
    String? dataExame,
    int? responsavelId,
    String? nomeResponsavel,
    int? pacienteId,
    String? nomePaciente,
    int? clinicaId,
    String? nomeClinica,
    double? valorExame,
    double? valorRepasse,
    String? naturezaOperacao,
    String? pagamentoForma,
    String? status,
    int? veterinarioId,
    String? nomeVeterinario,
  })  : _laudoId = laudoId,
        _userId = userId,
        _dataExame = dataExame,
        _responsavelId = responsavelId,
        _nomeResponsavel = nomeResponsavel,
        _pacienteId = pacienteId,
        _nomePaciente = nomePaciente,
        _clinicaId = clinicaId,
        _nomeClinica = nomeClinica,
        _valorExame = valorExame,
        _valorRepasse = valorRepasse,
        _naturezaOperacao = naturezaOperacao,
        _pagamentoForma = pagamentoForma,
        _status = status,
        _veterinarioId = veterinarioId,
        _nomeVeterinario = nomeVeterinario;

  // "laudo_id" field.
  int? _laudoId;
  int get laudoId => _laudoId ?? 0;
  set laudoId(int? val) => _laudoId = val;

  void incrementLaudoId(int amount) => laudoId = laudoId + amount;

  bool hasLaudoId() => _laudoId != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "data_exame" field.
  String? _dataExame;
  String get dataExame => _dataExame ?? '';
  set dataExame(String? val) => _dataExame = val;

  bool hasDataExame() => _dataExame != null;

  // "responsavel_id" field.
  int? _responsavelId;
  int get responsavelId => _responsavelId ?? 0;
  set responsavelId(int? val) => _responsavelId = val;

  void incrementResponsavelId(int amount) =>
      responsavelId = responsavelId + amount;

  bool hasResponsavelId() => _responsavelId != null;

  // "nome_responsavel" field.
  String? _nomeResponsavel;
  String get nomeResponsavel => _nomeResponsavel ?? '';
  set nomeResponsavel(String? val) => _nomeResponsavel = val;

  bool hasNomeResponsavel() => _nomeResponsavel != null;

  // "paciente_id" field.
  int? _pacienteId;
  int get pacienteId => _pacienteId ?? 0;
  set pacienteId(int? val) => _pacienteId = val;

  void incrementPacienteId(int amount) => pacienteId = pacienteId + amount;

  bool hasPacienteId() => _pacienteId != null;

  // "nome_paciente" field.
  String? _nomePaciente;
  String get nomePaciente => _nomePaciente ?? '';
  set nomePaciente(String? val) => _nomePaciente = val;

  bool hasNomePaciente() => _nomePaciente != null;

  // "clinica_id" field.
  int? _clinicaId;
  int get clinicaId => _clinicaId ?? 0;
  set clinicaId(int? val) => _clinicaId = val;

  void incrementClinicaId(int amount) => clinicaId = clinicaId + amount;

  bool hasClinicaId() => _clinicaId != null;

  // "nome_clinica" field.
  String? _nomeClinica;
  String get nomeClinica => _nomeClinica ?? '';
  set nomeClinica(String? val) => _nomeClinica = val;

  bool hasNomeClinica() => _nomeClinica != null;

  // "valor_exame" field.
  double? _valorExame;
  double get valorExame => _valorExame ?? 0.0;
  set valorExame(double? val) => _valorExame = val;

  void incrementValorExame(double amount) => valorExame = valorExame + amount;

  bool hasValorExame() => _valorExame != null;

  // "valor_repasse" field.
  double? _valorRepasse;
  double get valorRepasse => _valorRepasse ?? 0.0;
  set valorRepasse(double? val) => _valorRepasse = val;

  void incrementValorRepasse(double amount) =>
      valorRepasse = valorRepasse + amount;

  bool hasValorRepasse() => _valorRepasse != null;

  // "natureza_operacao" field.
  String? _naturezaOperacao;
  String get naturezaOperacao => _naturezaOperacao ?? '';
  set naturezaOperacao(String? val) => _naturezaOperacao = val;

  bool hasNaturezaOperacao() => _naturezaOperacao != null;

  // "pagamento_forma" field.
  String? _pagamentoForma;
  String get pagamentoForma => _pagamentoForma ?? '';
  set pagamentoForma(String? val) => _pagamentoForma = val;

  bool hasPagamentoForma() => _pagamentoForma != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "veterinario_id" field.
  int? _veterinarioId;
  int get veterinarioId => _veterinarioId ?? 0;
  set veterinarioId(int? val) => _veterinarioId = val;

  void incrementVeterinarioId(int amount) =>
      veterinarioId = veterinarioId + amount;

  bool hasVeterinarioId() => _veterinarioId != null;

  // "nome_veterinario" field.
  String? _nomeVeterinario;
  String get nomeVeterinario => _nomeVeterinario ?? '';
  set nomeVeterinario(String? val) => _nomeVeterinario = val;

  bool hasNomeVeterinario() => _nomeVeterinario != null;

  static LaudosFiltradosStruct fromMap(Map<String, dynamic> data) =>
      LaudosFiltradosStruct(
        laudoId: castToType<int>(data['laudo_id']),
        userId: data['user_id'] as String?,
        dataExame: data['data_exame'] as String?,
        responsavelId: castToType<int>(data['responsavel_id']),
        nomeResponsavel: data['nome_responsavel'] as String?,
        pacienteId: castToType<int>(data['paciente_id']),
        nomePaciente: data['nome_paciente'] as String?,
        clinicaId: castToType<int>(data['clinica_id']),
        nomeClinica: data['nome_clinica'] as String?,
        valorExame: castToType<double>(data['valor_exame']),
        valorRepasse: castToType<double>(data['valor_repasse']),
        naturezaOperacao: data['natureza_operacao'] as String?,
        pagamentoForma: data['pagamento_forma'] as String?,
        status: data['status'] as String?,
        veterinarioId: castToType<int>(data['veterinario_id']),
        nomeVeterinario: data['nome_veterinario'] as String?,
      );

  static LaudosFiltradosStruct? maybeFromMap(dynamic data) => data is Map
      ? LaudosFiltradosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'laudo_id': _laudoId,
        'user_id': _userId,
        'data_exame': _dataExame,
        'responsavel_id': _responsavelId,
        'nome_responsavel': _nomeResponsavel,
        'paciente_id': _pacienteId,
        'nome_paciente': _nomePaciente,
        'clinica_id': _clinicaId,
        'nome_clinica': _nomeClinica,
        'valor_exame': _valorExame,
        'valor_repasse': _valorRepasse,
        'natureza_operacao': _naturezaOperacao,
        'pagamento_forma': _pagamentoForma,
        'status': _status,
        'veterinario_id': _veterinarioId,
        'nome_veterinario': _nomeVeterinario,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'laudo_id': serializeParam(
          _laudoId,
          ParamType.int,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
        'data_exame': serializeParam(
          _dataExame,
          ParamType.String,
        ),
        'responsavel_id': serializeParam(
          _responsavelId,
          ParamType.int,
        ),
        'nome_responsavel': serializeParam(
          _nomeResponsavel,
          ParamType.String,
        ),
        'paciente_id': serializeParam(
          _pacienteId,
          ParamType.int,
        ),
        'nome_paciente': serializeParam(
          _nomePaciente,
          ParamType.String,
        ),
        'clinica_id': serializeParam(
          _clinicaId,
          ParamType.int,
        ),
        'nome_clinica': serializeParam(
          _nomeClinica,
          ParamType.String,
        ),
        'valor_exame': serializeParam(
          _valorExame,
          ParamType.double,
        ),
        'valor_repasse': serializeParam(
          _valorRepasse,
          ParamType.double,
        ),
        'natureza_operacao': serializeParam(
          _naturezaOperacao,
          ParamType.String,
        ),
        'pagamento_forma': serializeParam(
          _pagamentoForma,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'veterinario_id': serializeParam(
          _veterinarioId,
          ParamType.int,
        ),
        'nome_veterinario': serializeParam(
          _nomeVeterinario,
          ParamType.String,
        ),
      }.withoutNulls;

  static LaudosFiltradosStruct fromSerializableMap(Map<String, dynamic> data) =>
      LaudosFiltradosStruct(
        laudoId: deserializeParam(
          data['laudo_id'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
        dataExame: deserializeParam(
          data['data_exame'],
          ParamType.String,
          false,
        ),
        responsavelId: deserializeParam(
          data['responsavel_id'],
          ParamType.int,
          false,
        ),
        nomeResponsavel: deserializeParam(
          data['nome_responsavel'],
          ParamType.String,
          false,
        ),
        pacienteId: deserializeParam(
          data['paciente_id'],
          ParamType.int,
          false,
        ),
        nomePaciente: deserializeParam(
          data['nome_paciente'],
          ParamType.String,
          false,
        ),
        clinicaId: deserializeParam(
          data['clinica_id'],
          ParamType.int,
          false,
        ),
        nomeClinica: deserializeParam(
          data['nome_clinica'],
          ParamType.String,
          false,
        ),
        valorExame: deserializeParam(
          data['valor_exame'],
          ParamType.double,
          false,
        ),
        valorRepasse: deserializeParam(
          data['valor_repasse'],
          ParamType.double,
          false,
        ),
        naturezaOperacao: deserializeParam(
          data['natureza_operacao'],
          ParamType.String,
          false,
        ),
        pagamentoForma: deserializeParam(
          data['pagamento_forma'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        veterinarioId: deserializeParam(
          data['veterinario_id'],
          ParamType.int,
          false,
        ),
        nomeVeterinario: deserializeParam(
          data['nome_veterinario'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LaudosFiltradosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LaudosFiltradosStruct &&
        laudoId == other.laudoId &&
        userId == other.userId &&
        dataExame == other.dataExame &&
        responsavelId == other.responsavelId &&
        nomeResponsavel == other.nomeResponsavel &&
        pacienteId == other.pacienteId &&
        nomePaciente == other.nomePaciente &&
        clinicaId == other.clinicaId &&
        nomeClinica == other.nomeClinica &&
        valorExame == other.valorExame &&
        valorRepasse == other.valorRepasse &&
        naturezaOperacao == other.naturezaOperacao &&
        pagamentoForma == other.pagamentoForma &&
        status == other.status &&
        veterinarioId == other.veterinarioId &&
        nomeVeterinario == other.nomeVeterinario;
  }

  @override
  int get hashCode => const ListEquality().hash([
        laudoId,
        userId,
        dataExame,
        responsavelId,
        nomeResponsavel,
        pacienteId,
        nomePaciente,
        clinicaId,
        nomeClinica,
        valorExame,
        valorRepasse,
        naturezaOperacao,
        pagamentoForma,
        status,
        veterinarioId,
        nomeVeterinario
      ]);
}

LaudosFiltradosStruct createLaudosFiltradosStruct({
  int? laudoId,
  String? userId,
  String? dataExame,
  int? responsavelId,
  String? nomeResponsavel,
  int? pacienteId,
  String? nomePaciente,
  int? clinicaId,
  String? nomeClinica,
  double? valorExame,
  double? valorRepasse,
  String? naturezaOperacao,
  String? pagamentoForma,
  String? status,
  int? veterinarioId,
  String? nomeVeterinario,
}) =>
    LaudosFiltradosStruct(
      laudoId: laudoId,
      userId: userId,
      dataExame: dataExame,
      responsavelId: responsavelId,
      nomeResponsavel: nomeResponsavel,
      pacienteId: pacienteId,
      nomePaciente: nomePaciente,
      clinicaId: clinicaId,
      nomeClinica: nomeClinica,
      valorExame: valorExame,
      valorRepasse: valorRepasse,
      naturezaOperacao: naturezaOperacao,
      pagamentoForma: pagamentoForma,
      status: status,
      veterinarioId: veterinarioId,
      nomeVeterinario: nomeVeterinario,
    );
