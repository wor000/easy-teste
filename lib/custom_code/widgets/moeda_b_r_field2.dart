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

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class MoedaBRField2 extends StatefulWidget {
  const MoedaBRField2({
    Key? key,
    this.width,
    this.height,
    required this.bordercolor,
    required this.borderRadius,
    required this.initialValue,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color bordercolor;
  final double borderRadius;
  final String initialValue;

  @override
  _MoedaBRField2State createState() => _MoedaBRField2State();
}

const myGreyColor = Color(0xFFBBC2CE); // Definição da cor
const fontSizeCont = 14.0; // Tornando a constante de tamanho de fonte clara

class _MoedaBRField2State extends State<MoedaBRField2> {
  late final TextEditingController _priceEditingController;
  final currencyFormat = NumberFormat("#,##0.00", "pt_BR");
  String? _errorText;

  @override
  void initState() {
    super.initState();
    _priceEditingController = TextEditingController(text: widget.initialValue);
    _priceEditingController.addListener(_validateInput);
  }

  @override
  void dispose() {
    _priceEditingController.removeListener(_validateInput);
    _priceEditingController.dispose();
    super.dispose();
  }

  void _validateInput() {
    final value = _priceEditingController.text;
    if (value.isEmpty ||
        double.tryParse(value.replaceAll(RegExp(r'[^0-9]'), '')) == null) {
      setState(() {
        _errorText = 'Por favor, insira um valor válido.';
      });
    } else {
      setState(() {
        _errorText = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: TextField(
        controller: _priceEditingController,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          TextInputFormatter.withFunction((oldValue, newValue) {
            return formatNewValue(oldValue, newValue);
          })
        ],
        style: const TextStyle(
          fontSize: fontSizeCont,
          fontWeight: FontWeight.normal,
        ),
        decoration: InputDecoration(
          hintText: '1.000,00',
          hintStyle: TextStyle(
            color: myGreyColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(
              color: myGreyColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(color: Color(0xFFBBC2CE)),
          ),
          prefix: const Text(
            'R\$ ',
            style: TextStyle(
              color: Color(0xFF848a91),
              fontSize: fontSizeCont,
              fontWeight: FontWeight.normal,
            ),
          ),
          errorText: _errorText,
        ),
      ),
    );
  }

  TextEditingValue formatNewValue(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text;
    final selection = newValue.selection;
    if (text.isEmpty) {
      return TextEditingValue(text: '', selection: selection);
    } else if (text.length == 1) {
      final number = int.tryParse(text);
      if (number == null) {
        return oldValue;
      } else {
        final newText = '0.${number.toString()}';
        return TextEditingValue(
          text: newText,
          selection: TextSelection.collapsed(offset: newText.length),
        );
      }
    } else {
      final price = double.parse(text.replaceAll(RegExp(r'[^0-9]'), '')) / 100;
      final newText = currencyFormat.format(price);
      FFAppState().update(() {
        FFAppState().inputValos2 = price;
      });
      final newSelectionIndex = newText.length - (text.length - selection.end);
      return TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: newSelectionIndex),
      );
    }
  }
}
