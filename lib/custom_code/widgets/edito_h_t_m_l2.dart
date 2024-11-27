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

class EditoHTML2 extends StatefulWidget {
  const EditoHTML2({
    Key? key,
    this.width,
    this.height,
    this.texto,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? texto;

  @override
  State<EditoHTML2> createState() => _EditoHTML2State();
}

class _EditoHTML2State extends State<EditoHTML2> {
  late HtmlEditorController _controller;
  late String _initialText;

  @override
  void initState() {
    super.initState();
    _controller = HtmlEditorController();
    _initialText = widget.texto ?? '';

    // Insere o estilo CSS para a cor do texto após a inicialização do editor
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.insertHtml('''
        <style>
          body { color: #6b6b6b; font-family: 'Nunito Sans', sans-serif; }
        </style>
      ''');
    });
  }

  void _updateText(String newText) {
    FFAppState().update(() {
      FFAppState().conteudoLaudoEditor = newText;
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
            ListButtons(listStyles: false),
            FontButtons(),
          ],
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
