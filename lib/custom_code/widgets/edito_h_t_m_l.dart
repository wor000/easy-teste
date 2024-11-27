// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:html_editor_enhanced/html_editor.dart';

class EditoHTML extends StatefulWidget {
  const EditoHTML({
    Key? key,
    this.width,
    this.height,
    this.texto,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? texto;

  @override
  State<EditoHTML> createState() => _EditoHTMLState();
}

class _EditoHTMLState extends State<EditoHTML> {
  late HtmlEditorController _controller;
  late String _initialText;

  @override
  void initState() {
    super.initState();
    _controller = HtmlEditorController();
    _initialText = _formatInitialText(widget.texto);
  }

  String _formatInitialText(String? text) {
    if (text == null || text.isEmpty) return '';
    // Preserve line breaks and spaces
    return text.replaceAll('\n', '<br>').replaceAll('  ', '&nbsp;&nbsp;');
  }

  void _updateText(String newText) {
    // Remove todas as tags HTML, exceto <br>
    var plainText = newText.replaceAll(
        RegExp(r'<(?!br\s*\/?>)[^>]+>', multiLine: true), '');

    // Substitui <br>, <br/>, <br /> por quebras de linha
    plainText =
        plainText.replaceAll(RegExp(r'<br\s*\/?>', multiLine: true), '\n');

    // Remove espaços extras no início e no fim de cada linha
    plainText = plainText.split('\n').map((line) => line.trim()).join('\n');

    // Substitui múltiplas quebras de linha por apenas duas
    plainText = plainText.replaceAll(RegExp(r'\n{3,}'), '\n\n');

    // Substitui &nbsp; por espaço normal
    plainText = plainText.replaceAll('&nbsp;', ' ');

    // Remove espaços extras no início e no fim do texto inteiro
    plainText = plainText.trim();

    FFAppState().update(() {
      FFAppState().conteudoLaudoEditor = plainText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 400,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: HtmlEditor(
        controller: _controller,
        htmlEditorOptions: HtmlEditorOptions(
          hint: 'Digite seu texto aqui...',
          initialText: _initialText,
          shouldEnsureVisible: true,
          autoAdjustHeight: true,
          adjustHeightForKeyboard: true,
          spellCheck: true,
        ),
        htmlToolbarOptions: HtmlToolbarOptions(
          defaultToolbarButtons: [
            StyleButtons(),
            FontSettingButtons(),
            FontButtons(),
            ColorButtons(),
            ListButtons(),
            ParagraphButtons(),
            InsertButtons(),
            OtherButtons(),
          ],
        ),
        otherOptions: OtherOptions(
          height: widget.height ?? 400,
        ),
        callbacks: Callbacks(
          onChangeContent: (String? changed) {
            if (changed != null) {
              _updateText(changed);
            }
          },
        ),
      ),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
