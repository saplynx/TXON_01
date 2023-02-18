import 'package:flutter/material.dart';
import 'package:unit_converter/consts.dart';
import 'package:unit_converter/converter_card.dart';

void main() {
  runApp(UnitConverter());
}

class UnitConverter extends StatefulWidget {
  const UnitConverter({Key? key}) : super(key: key);

  @override
  State<UnitConverter> createState() => _UnitConverterState();
}

class _UnitConverterState extends State<UnitConverter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Unit Converter')),
        body: Column(
          children: [
            ConverterCard()
          ],
        ),
      ),
    );
  }
}


