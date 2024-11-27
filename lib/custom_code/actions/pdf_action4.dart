// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:http/http.dart' as http;
import 'package:printing/printing.dart';
import 'dart:typed_data';
import 'package:html/parser.dart' as html_parser;
import 'package:supabase/supabase.dart';
import 'package:html/dom.dart' as dom; // Importa os tipos do DOM

Future pdfAction4(
    String html,
    String imageLogoURL,
    String imagemAssinaturaURL,
    String informacoesEmpresa,
    String redesocial,
    String nomeEmpresa,
    String nomePDF,
    List<String> listaDeImagens) async {
  final client = Supabase.instance.client;

  final pdfBytes = await _generatePdfBytes(
      html,
      imageLogoURL,
      imagemAssinaturaURL,
      informacoesEmpresa,
      redesocial,
      nomeEmpresa,
      listaDeImagens);

  // Upload do PDF para o Supabase Storage
  try {
    final response = await client.storage
        .from('pdfs_gerados')
        .uploadBinary('$nomePDF.pdf', pdfBytes);
    if (response != null && response.isNotEmpty) {
      final publicUrl =
          client.storage.from('pdfs_gerados').getPublicUrl('$nomePDF.pdf');
      return publicUrl;
    }
  } catch (e) {
    throw Exception('Erro ao fazer upload do PDF: $e');
  }
}

Future<Uint8List> _generatePdfBytes(
    String html,
    String imageLogoURL,
    String imagemAssinaturaURL,
    String informacoesEmpresa,
    String redesocial,
    String nomeEmpresa,
    List<String> listaDeImagens) async {
  final pdf = pw.Document();

  // URL da primeira imagem
  final String imageUrl1 = imageLogoURL;
  final String imageUrl2 = imagemAssinaturaURL;

  // Baixa a primeira imagem como Uint8List
  Uint8List? imageData1;
  try {
    final http.Response response1 = await http.get(Uri.parse(imageUrl1));
    if (response1.statusCode == 200) {
      imageData1 = response1.bodyBytes;
    } else {
      throw Exception('Falha ao carregar a primeira imagem');
    }
  } catch (e) {
    imageData1 = null;
  }

  // Baixa a segunda imagem como Uint8List
  Uint8List? imageData2;
  try {
    final http.Response response2 = await http.get(Uri.parse(imageUrl2));
    if (response2.statusCode == 200) {
      imageData2 = response2.bodyBytes;
    } else {
      throw Exception('Falha ao carregar a segunda imagem');
    }
  } catch (e) {
    imageData2 = null;
  }

  // Adiciona a tabela com as imagens e informações
  final widgets = <pw.Widget>[
    pw.Table(
      children: [
        pw.TableRow(
          children: [
            pw.Container(
              padding: const pw.EdgeInsets.all(8),
              child: imageData1 != null
                  ? pw.Image(
                      pw.MemoryImage(imageData1),
                      height: 100,
                      fit: pw.BoxFit.contain,
                    )
                  : pw.Paragraph(text: 'Logo não disponível'),
            ),
            pw.Container(
              width: 400, // Define a largura total como 400px
              padding: const pw.EdgeInsets.all(8),
              alignment: pw.Alignment.center,
              child: pw.Column(
                children: [
                  pw.Text(
                    nomeEmpresa,
                    style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                  pw.Text(
                    informacoesEmpresa,
                    textAlign: pw.TextAlign.center,
                    style: pw.TextStyle(
                      fontSize: 11,
                    ),
                  ),
                  pw.Text(
                    redesocial,
                    style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
            pw.Container(
              padding: const pw.EdgeInsets.all(8),
              child: imageData2 != null
                  ? pw.Image(
                      pw.MemoryImage(imageData2),
                      height: 60,
                      fit: pw.BoxFit.contain,
                    )
                  : pw.Paragraph(text: 'Assinatura não disponível'),
            ),
          ],
        ),
      ],
    ),
    pw.Padding(
      padding: const pw.EdgeInsets.only(top: -10),
      child: pw.Divider(
        thickness: 1,
        color: PdfColors.grey,
      ),
    ),
    pw.SizedBox(height: 10),
  ];

  // Parse o HTML para gerar widgets PDF
  final document = html_parser.parse(html);

  // Navega pelos elementos do HTML e cria widgets para o PDF
  for (var element in document.body!.children) {
    switch (element.localName) {
      case 'h1':
        widgets.add(pw.Paragraph(
            text: element.text,
            style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold)));
        break;
      case 'h2':
        widgets.add(pw.Paragraph(
            text: element.text,
            style: pw.TextStyle(fontSize: 22, fontWeight: pw.FontWeight.bold)));
        break;
      case 'h3':
        widgets.add(pw.Paragraph(
            text: element.text,
            style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold)));
        break;
      case 'h4':
        widgets.add(pw.Paragraph(
            text: element.text,
            style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)));
        break;
      case 'h5':
        widgets.add(pw.Paragraph(
            text: element.text,
            style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold)));
        break;

      case 'p':
        final childWidgets = <pw.InlineSpan>[];

        for (var child in element.nodes) {
          if (child is dom.Element) {
            // Use 'dom.Element' em vez de 'Element'
            switch (child.localName) {
              case 'b':
              case 'strong':
                childWidgets.add(
                  pw.TextSpan(
                    text: child.text,
                    style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 12, // Ajuste o tamanho da fonte se necessário
                    ),
                  ),
                );
                break;
              case 'i':
              case 'em':
                childWidgets.add(
                  pw.TextSpan(
                    text: child.text,
                    style: pw.TextStyle(
                      fontStyle: pw.FontStyle.italic,
                      fontSize: 12,
                    ),
                  ),
                );
                break;
              default:
                childWidgets.add(
                  pw.TextSpan(
                    text: child.text,
                    style: pw.TextStyle(fontSize: 12),
                  ),
                );
            }
          } else if (child is dom.Text) {
            // Use 'dom.Text' para nós de texto
            childWidgets.add(
              pw.TextSpan(
                text: child.text,
                style: pw.TextStyle(fontSize: 12),
              ),
            );
          }
        }

        widgets.add(
          pw.RichText(
            text: pw.TextSpan(
              children: childWidgets,
            ),
          ),
        );
        break;

      case 'blockquote':
        widgets.add(pw.Paragraph(
            text: element.text,
            style: pw.TextStyle(
              fontStyle: pw.FontStyle.italic,
            )));
        break;
      case 'ul':
        for (var li in element.children) {
          if (li.localName == 'li') {
            widgets.add(pw.Bullet(text: li.text));
          }
        }
        break;
      case 'ol':
        int index = 1;
        for (var li in element.children) {
          if (li.localName == 'li') {
            widgets.add(pw.Bullet(text: '${index++}. ${li.text}'));
          }
        }
        break;
      case 'img':
        final imageUrl = element.attributes['src'];
        if (imageUrl != null) {
          try {
            final Uri uri = Uri.parse(imageUrl);
            if (uri.isAbsolute) {
              final response = await http.get(uri);
              if (response.statusCode == 200) {
                final image = pw.MemoryImage(response.bodyBytes);
                widgets.add(pw.Image(image));
              } else {
                widgets.add(pw.Paragraph(
                    text: 'Imagem não pôde ser carregada: $imageUrl'));
              }
            } else {
              widgets
                  .add(pw.Paragraph(text: 'URL de imagem inválida: $imageUrl'));
            }
          } catch (e) {
            widgets.add(
                pw.Paragraph(text: 'Imagem não pôde ser carregada: $imageUrl'));
          }
        }
        break;
      case 'strong':
      case 'b':
        widgets.add(pw.Paragraph(
            text: element.text,
            style: pw.TextStyle(fontWeight: pw.FontWeight.bold)));
        break;
      case 'em':
      case 'i':
        widgets.add(pw.Paragraph(
            text: element.text,
            style: pw.TextStyle(fontStyle: pw.FontStyle.italic)));
        break;
      case 'a':
        final link = element.attributes['href'] ?? '';
        widgets.add(pw.Paragraph(
            text: '${element.text} ($link)',
            style: pw.TextStyle(decoration: pw.TextDecoration.underline)));
        break;
      case 'code':
        widgets.add(pw.Paragraph(
            text: element.text,
            style: pw.TextStyle(font: pw.Font.courier(), fontSize: 12)));
        break;
      default:
        widgets.add(pw.Paragraph(text: element.text));
    }
  }

  // Adiciona as imagens da lista de duas em duas
  for (int i = 0; i < listaDeImagens.length; i += 2) {
    final imageWidgets = <pw.Widget>[];
    for (int j = 0; j < 2 && (i + j) < listaDeImagens.length; j++) {
      final imageUrl = listaDeImagens[i + j];
      try {
        final http.Response response = await http.get(Uri.parse(imageUrl));
        if (response.statusCode == 200) {
          final image = pw.MemoryImage(response.bodyBytes);
          imageWidgets.add(
            pw.Container(
              padding: const pw.EdgeInsets.all(8),
              child: pw.Image(image,
                  width:
                      250, // Using a fixed width instead of dynamic calculation
                  height: 150,
                  fit: pw.BoxFit.contain),
            ),
          );
        } else {
          imageWidgets.add(
            pw.Container(
              padding: const pw.EdgeInsets.all(8),
              child: pw.Paragraph(text: 'Imagem não disponível: $imageUrl'),
            ),
          );
        }
      } catch (e) {
        imageWidgets.add(
          pw.Container(
            padding: const pw.EdgeInsets.all(8),
            child: pw.Paragraph(text: 'Erro ao carregar imagem: $imageUrl'),
          ),
        );
      }
    }
    widgets.add(
      pw.Row(
          children: imageWidgets,
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween),
    );
  }

  pdf.addPage(pw.MultiPage(build: (context) => widgets));

  // Return the PDF as bytes
  return pdf.save();
}
