import 'package:flutter/material.dart';
import 'package:unit_converter/consts.dart';
import 'package:unit_converter/length_converter_card.dart';
import 'package:unit_converter/mass_converter_card.dart';
import 'package:unit_converter/temperature_converter_card.dart';
import 'package:unit_converter/speed_converter_card.dart';

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              LengthConverterCard(),
              TemperatureConverterCard(),
              MassConverterCard(),
              SpeedConverterCard(),
            ],
          ),
        ),
      ),
    );
  }
}


