import 'package:flutter/material.dart';
import 'package:unit_converter/consts.dart';
import 'package:unit_converter/converter.dart';

class LengthConverterCard extends StatefulWidget {
  const LengthConverterCard({
    super.key,
  });

  @override
  State<LengthConverterCard> createState() => _LengthConverterCardState();
}

class _LengthConverterCardState extends State<LengthConverterCard> {
  int dropDown1Value = 0;
  int dropDown2Value = 1;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();


  List<DropdownMenuItem> lengthUnits = [
    DropdownMenuItem(
      child: Text('meter'),
      value: 0,
    ),
    DropdownMenuItem(
      child: Text('cm'),
      value: 1,
    ),
    DropdownMenuItem(
      child: Text('km'),
      value: 2,
    ),
    DropdownMenuItem(
      child: Text('ft'),
      value: 3,
    ),
    DropdownMenuItem(
      child: Text('in'),
      value: 4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
      child: Card(
        elevation: 8.0,
        color: Colors.white70,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Length', style: cardTitle),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 90.0,
                    child: TextField(
                      controller: t1,
                      keyboardType: TextInputType.number,
                      onChanged: (String input) {
                        setState(() {
                          t2.text = lengthConverter(dropDown1Value, dropDown2Value, input)!;
                        });
                      },
                    ),
                  ),
                  DropdownButton(
                    items: lengthUnits,
                    value: dropDown1Value,
                    onChanged: (value) {
                      setState(() {
                        dropDown1Value = value;
                        t2.text = lengthConverter(dropDown1Value, dropDown2Value, t1.text)!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 90.0,
                    child: TextField(
                      controller: t2,
                      keyboardType: TextInputType.number,
                      onChanged: (String input) {
                        t1.text = lengthConverter(dropDown2Value, dropDown1Value, input)!;
                      },
                    ),
                  ),
                  DropdownButton(
                    items: lengthUnits,
                    value: dropDown2Value,
                    onChanged: (value) {
                      setState(() {
                        dropDown2Value = value;
                        t2.text = lengthConverter(dropDown1Value, dropDown2Value, t1.text)!;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
