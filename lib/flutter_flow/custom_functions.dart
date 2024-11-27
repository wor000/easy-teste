import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String? geraUrl(
  String? userId,
  int? veterinarioId,
  int? clinicaId,
  String? dataInicial,
  String? dataFinal,
  String? naturezaOperacao,
  String? statusPagamento,
) {
  // Preciso criar uma url de consulta para o supabase, onde a base é: https://lowtykdaezuwtgykrqzw.supabase.co/rest/v1/laudos_detalhados. a função precisa receber as variaveis   String? userId,   int? veterinarioId,   int? clinicaId,   String? dataInicial,   String? dataFinal,   String? naturezaOperacao,   String? statusPagamento e só utilizá-las na url caso não estejam vazia ou nulas. além disso precisa filtrar o campo data_exame puxando registros que estejam dentro da dataInical e dataFinal
  String baseUrl =
      'https://lowtykdaezuwtgykrqzw.supabase.co/rest/v1/laudos_detalhados';
  List<String> queryParams = [];

  if (userId != null && userId.isNotEmpty) {
    queryParams.add('user_id=eq.$userId');
  }
  if (veterinarioId != null && veterinarioId != 0) {
    queryParams.add('veterinario_id=eq.$veterinarioId');
  }
  if (clinicaId != null && clinicaId != 0) {
    queryParams.add('clinica_id=eq.$clinicaId');
  }
  if (dataInicial != null &&
      dataFinal != null &&
      dataInicial.isNotEmpty &&
      dataFinal.isNotEmpty) {
    queryParams.add('data_exame=gte.$dataInicial');
    queryParams.add('data_exame=lte.$dataFinal');
  }
  if (naturezaOperacao != null && naturezaOperacao.isNotEmpty) {
    queryParams.add('natureza_operacao=eq.$naturezaOperacao');
  }
  if (statusPagamento != null && statusPagamento.isNotEmpty) {
    queryParams.add('status=eq.$statusPagamento');
  }

  String queryString = queryParams.join('&');
  String url = '$baseUrl?$queryString';

  return url;
}

String? idade(String? dataNascimento) {
  if (dataNascimento == null) return null;

  DateTime dataNascimentoFormatada =
      DateTime.parse(dataNascimento.split('/').reversed.join('-'));
  DateTime hoje = DateTime.now();

  int idade = hoje.year - dataNascimentoFormatada.year;

  // Ajuste se o aniversário ainda não ocorreu este ano
  if (hoje.month < dataNascimentoFormatada.month ||
      (hoje.month == dataNascimentoFormatada.month &&
          hoje.day < dataNascimentoFormatada.day)) {
    idade--;
  }

  // Verificar se a idade é menor que 1 ano e calcular em meses
  if (idade <= 0) {
    int meses = (hoje.year - dataNascimentoFormatada.year) * 12 +
        hoje.month -
        dataNascimentoFormatada.month;

    // Ajuste se o dia atual é anterior ao dia de nascimento no mês atual
    if (hoje.day < dataNascimentoFormatada.day) {
      meses--;
    }
    return "$meses meses";
  }

  return "$idade anos";
}

String? listaURLToString(List<String>? listaImagens) {
  // Verifica se a lista é nula ou vazia
  if (listaImagens == null || listaImagens.isEmpty) {
    return null;
  }

  // Envolve cada URL com <p> e junta usando <br> como separador
  return listaImagens
      .map((item) => '<div class="image-container"><img  src="$item" ></div>')
      .join('');
}

List<String>? listImgPathTOListString(List<String>? listaPathImage) {
  // list Path Image to  list string
  if (listaPathImage == null) {
    return null;
  }

  List<String> listString = [];
  for (String pathImage in listaPathImage) {
    listString.add(pathImage);
  }

  return listString;
}
