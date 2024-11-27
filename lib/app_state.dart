import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _tutores = prefs
              .getStringList('ff_tutores')
              ?.map((x) {
                try {
                  return TutoresStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _tutores;
    });
    _safeInit(() {
      _dadosLaudo = prefs
              .getStringList('ff_dadosLaudo')
              ?.map((x) {
                try {
                  return DadosLaudoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _dadosLaudo;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<TutoresStruct> _tutores = [
    TutoresStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Mario Fonseca\",\"telefone\":\"11996463190\",\"email\":\"mario@gmail.com\",\"pet\":\"Kira\",\"endereco\":\"Rua Aldo Soares Matuzzo, 1013 - Vila Conceição, São Paulo/SP\"}')),
    TutoresStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Rodrigo Silva\",\"telefone\":\"(11) 9 9674-7125\",\"email\":\"rodrigo_silva@hotmail.com\",\"pet\":\"Simba\",\"endereco\":\"Rua Jovenal de Campos, 981 - Sta Cecília, São Paulo/SP\"}')),
    TutoresStruct.fromSerializableMap(jsonDecode(
        '{\"nome\":\"Maria de Alencar Neto\",\"telefone\":\"(11) 99725-1123\",\"email\":\"m_alencar@grupoalencar.com.br\",\"pet\":\"Catarina\",\"endereco\":\"Rua Pedroso Alvarenga, 706 - Itaim bibi, São Paulo/SP\"}'))
  ];
  List<TutoresStruct> get tutores => _tutores;
  set tutores(List<TutoresStruct> value) {
    _tutores = value;
    prefs.setStringList('ff_tutores', value.map((x) => x.serialize()).toList());
  }

  void addToTutores(TutoresStruct value) {
    tutores.add(value);
    prefs.setStringList(
        'ff_tutores', _tutores.map((x) => x.serialize()).toList());
  }

  void removeFromTutores(TutoresStruct value) {
    tutores.remove(value);
    prefs.setStringList(
        'ff_tutores', _tutores.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTutores(int index) {
    tutores.removeAt(index);
    prefs.setStringList(
        'ff_tutores', _tutores.map((x) => x.serialize()).toList());
  }

  void updateTutoresAtIndex(
    int index,
    TutoresStruct Function(TutoresStruct) updateFn,
  ) {
    tutores[index] = updateFn(_tutores[index]);
    prefs.setStringList(
        'ff_tutores', _tutores.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTutores(int index, TutoresStruct value) {
    tutores.insert(index, value);
    prefs.setStringList(
        'ff_tutores', _tutores.map((x) => x.serialize()).toList());
  }

  List<PetsStruct> _pets = [
    PetsStruct.fromSerializableMap(jsonDecode(
        '{\"nome-pet\":\"Sophia\",\"especie-pet\":\"Cachorro\",\"raca-pet\":\"Golden Retriever\",\"ano-nascimento-pet\":\"2016\",\"peso-pet\":\"30\",\"sexo-pet\":\"Fêmea\"}')),
    PetsStruct.fromSerializableMap(jsonDecode(
        '{\"nome-pet\":\"Frederico\",\"especie-pet\":\"Cachorro\",\"raca-pet\":\"Maltês\",\"ano-nascimento-pet\":\"218\",\"peso-pet\":\"12\",\"sexo-pet\":\"Macho\"}'))
  ];
  List<PetsStruct> get pets => _pets;
  set pets(List<PetsStruct> value) {
    _pets = value;
  }

  void addToPets(PetsStruct value) {
    pets.add(value);
  }

  void removeFromPets(PetsStruct value) {
    pets.remove(value);
  }

  void removeAtIndexFromPets(int index) {
    pets.removeAt(index);
  }

  void updatePetsAtIndex(
    int index,
    PetsStruct Function(PetsStruct) updateFn,
  ) {
    pets[index] = updateFn(_pets[index]);
  }

  void insertAtIndexInPets(int index, PetsStruct value) {
    pets.insert(index, value);
  }

  List<FinanceiroStruct> _financeiro = [
    FinanceiroStruct.fromSerializableMap(jsonDecode(
        '{\"receita\":\"1000\",\"mes\":\"1706699820000\",\"despesa\":\"200\"}')),
    FinanceiroStruct.fromSerializableMap(jsonDecode(
        '{\"receita\":\"5000\",\"mes\":\"1709205420000\",\"despesa\":\"1200\"}')),
    FinanceiroStruct.fromSerializableMap(jsonDecode(
        '{\"receita\":\"12000\",\"mes\":\"1711883820000\",\"despesa\":\"3000\"}')),
    FinanceiroStruct.fromSerializableMap(jsonDecode(
        '{\"receita\":\"9000\",\"mes\":\"1714475880000\",\"despesa\":\"500\"}')),
    FinanceiroStruct.fromSerializableMap(jsonDecode(
        '{\"receita\":\"18000\",\"mes\":\"1717154280000\",\"despesa\":\"3200\"}')),
    FinanceiroStruct.fromSerializableMap(jsonDecode(
        '{\"receita\":\"22400\",\"mes\":\"1719746280000\",\"despesa\":\"6000\"}')),
    FinanceiroStruct.fromSerializableMap(jsonDecode(
        '{\"receita\":\"29000\",\"mes\":\"1721647140000\",\"despesa\":\"8000\"}'))
  ];
  List<FinanceiroStruct> get financeiro => _financeiro;
  set financeiro(List<FinanceiroStruct> value) {
    _financeiro = value;
  }

  void addToFinanceiro(FinanceiroStruct value) {
    financeiro.add(value);
  }

  void removeFromFinanceiro(FinanceiroStruct value) {
    financeiro.remove(value);
  }

  void removeAtIndexFromFinanceiro(int index) {
    financeiro.removeAt(index);
  }

  void updateFinanceiroAtIndex(
    int index,
    FinanceiroStruct Function(FinanceiroStruct) updateFn,
  ) {
    financeiro[index] = updateFn(_financeiro[index]);
  }

  void insertAtIndexInFinanceiro(int index, FinanceiroStruct value) {
    financeiro.insert(index, value);
  }

  String _HTMLMessage = '';
  String get HTMLMessage => _HTMLMessage;
  set HTMLMessage(String value) {
    _HTMLMessage = value;
  }

  bool _step1 = false;
  bool get step1 => _step1;
  set step1(bool value) {
    _step1 = value;
  }

  bool _step2 = false;
  bool get step2 => _step2;
  set step2(bool value) {
    _step2 = value;
  }

  bool _step3 = false;
  bool get step3 => _step3;
  set step3(bool value) {
    _step3 = value;
  }

  bool _step4 = false;
  bool get step4 => _step4;
  set step4(bool value) {
    _step4 = value;
  }

  bool _step5 = false;
  bool get step5 => _step5;
  set step5(bool value) {
    _step5 = value;
  }

  String _VerLaudoPDF = '';
  String get VerLaudoPDF => _VerLaudoPDF;
  set VerLaudoPDF(String value) {
    _VerLaudoPDF = value;
  }

  String _cabecalhoAssinaturaPDF = '';
  String get cabecalhoAssinaturaPDF => _cabecalhoAssinaturaPDF;
  set cabecalhoAssinaturaPDF(String value) {
    _cabecalhoAssinaturaPDF = value;
  }

  String _VerLaudoCabecalhoPDF = '';
  String get VerLaudoCabecalhoPDF => _VerLaudoCabecalhoPDF;
  set VerLaudoCabecalhoPDF(String value) {
    _VerLaudoCabecalhoPDF = value;
  }

  String _conteudoLaudoEditor = '';
  String get conteudoLaudoEditor => _conteudoLaudoEditor;
  set conteudoLaudoEditor(String value) {
    _conteudoLaudoEditor = value;
  }

  String _cabecalhoLaudoEditor = '';
  String get cabecalhoLaudoEditor => _cabecalhoLaudoEditor;
  set cabecalhoLaudoEditor(String value) {
    _cabecalhoLaudoEditor = value;
  }

  String _pdfBase64 = '';
  String get pdfBase64 => _pdfBase64;
  set pdfBase64(String value) {
    _pdfBase64 = value;
  }

  String _statusAssinatura = '';
  String get statusAssinatura => _statusAssinatura;
  set statusAssinatura(String value) {
    _statusAssinatura = value;
  }

  String _rawBodyAssinatura = '';
  String get rawBodyAssinatura => _rawBodyAssinatura;
  set rawBodyAssinatura(String value) {
    _rawBodyAssinatura = value;
  }

  int _veterinarioId = 0;
  int get veterinarioId => _veterinarioId;
  set veterinarioId(int value) {
    _veterinarioId = value;
  }

  int _clinicaId = 0;
  int get clinicaId => _clinicaId;
  set clinicaId(int value) {
    _clinicaId = value;
  }

  DateTime? _dataInicial = DateTime.fromMillisecondsSinceEpoch(1731420900000);
  DateTime? get dataInicial => _dataInicial;
  set dataInicial(DateTime? value) {
    _dataInicial = value;
  }

  DateTime? _dataFinal;
  DateTime? get dataFinal => _dataFinal;
  set dataFinal(DateTime? value) {
    _dataFinal = value;
  }

  String _naturezaOperacao = '';
  String get naturezaOperacao => _naturezaOperacao;
  set naturezaOperacao(String value) {
    _naturezaOperacao = value;
  }

  String _statusPagamento = '';
  String get statusPagamento => _statusPagamento;
  set statusPagamento(String value) {
    _statusPagamento = value;
  }

  String _pagamentoForma = '';
  String get pagamentoForma => _pagamentoForma;
  set pagamentoForma(String value) {
    _pagamentoForma = value;
  }

  List<DadosLaudoStruct> _dadosLaudo = [];
  List<DadosLaudoStruct> get dadosLaudo => _dadosLaudo;
  set dadosLaudo(List<DadosLaudoStruct> value) {
    _dadosLaudo = value;
    prefs.setStringList(
        'ff_dadosLaudo', value.map((x) => x.serialize()).toList());
  }

  void addToDadosLaudo(DadosLaudoStruct value) {
    dadosLaudo.add(value);
    prefs.setStringList(
        'ff_dadosLaudo', _dadosLaudo.map((x) => x.serialize()).toList());
  }

  void removeFromDadosLaudo(DadosLaudoStruct value) {
    dadosLaudo.remove(value);
    prefs.setStringList(
        'ff_dadosLaudo', _dadosLaudo.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDadosLaudo(int index) {
    dadosLaudo.removeAt(index);
    prefs.setStringList(
        'ff_dadosLaudo', _dadosLaudo.map((x) => x.serialize()).toList());
  }

  void updateDadosLaudoAtIndex(
    int index,
    DadosLaudoStruct Function(DadosLaudoStruct) updateFn,
  ) {
    dadosLaudo[index] = updateFn(_dadosLaudo[index]);
    prefs.setStringList(
        'ff_dadosLaudo', _dadosLaudo.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDadosLaudo(int index, DadosLaudoStruct value) {
    dadosLaudo.insert(index, value);
    prefs.setStringList(
        'ff_dadosLaudo', _dadosLaudo.map((x) => x.serialize()).toList());
  }

  int _contador = 0;
  int get contador => _contador;
  set contador(int value) {
    _contador = value;
  }

  String _url = '';
  String get url => _url;
  set url(String value) {
    _url = value;
  }

  int _idEtapa = 0;
  int get idEtapa => _idEtapa;
  set idEtapa(int value) {
    _idEtapa = value;
  }

  double _inputValos1 = 0.0;
  double get inputValos1 => _inputValos1;
  set inputValos1(double value) {
    _inputValos1 = value;
  }

  double _inputValos2 = 0.0;
  double get inputValos2 => _inputValos2;
  set inputValos2(double value) {
    _inputValos2 = value;
  }

  List<String> _ImagensLaudo = [
    'https://avatars0.githubusercontent.com/u/9892522?v=4&s=400'
  ];
  List<String> get ImagensLaudo => _ImagensLaudo;
  set ImagensLaudo(List<String> value) {
    _ImagensLaudo = value;
  }

  void addToImagensLaudo(String value) {
    ImagensLaudo.add(value);
  }

  void removeFromImagensLaudo(String value) {
    ImagensLaudo.remove(value);
  }

  void removeAtIndexFromImagensLaudo(int index) {
    ImagensLaudo.removeAt(index);
  }

  void updateImagensLaudoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ImagensLaudo[index] = updateFn(_ImagensLaudo[index]);
  }

  void insertAtIndexInImagensLaudo(int index, String value) {
    ImagensLaudo.insert(index, value);
  }

  int _menuGrupo = 0;
  int get menuGrupo => _menuGrupo;
  set menuGrupo(int value) {
    _menuGrupo = value;
  }

  String _menuPagina = '';
  String get menuPagina => _menuPagina;
  set menuPagina(String value) {
    _menuPagina = value;
  }

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
