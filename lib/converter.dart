String? lengthConverterOld(String u1, String u2, String l) {
  double t = double.parse(l);
  if (u1 == 'm') {
    switch (u2) {
      case 'm':
        {
          return l;
        }

      case 'cm':
        {
          return (t * 100).toString();
        }

      case 'km':
        {
          return (t * 0.001).toString();
        }

      case 'ft':
        {
          return (t * 3.2808).toString();
        }
    }
  } else if (u1 == 'cm') {
    switch (u2) {
      case 'm':
        {
          return (t * 0.01).toString();
        }

      case 'cm':
        {
          return l;
        }

      case 'km':
        {
          return (t * 0.00001).toString();
        }

      case 'ft':
        {
          return (t * 0.032808).toString();
        }
    }
  } else if (u1 == 'km') {
    switch (u2) {
      case 'm':
        {
          return (t * 1000).toString();
        }

      case 'cm':
        {
          return (t * 100000).toString();
        }

      case 'km':
        {
          return l;
        }

      case 'ft':
        {
          return (t * 3280.8399).toString();
        }
    }
  } else if (u1 == 'ft') {
    switch (u2) {
      case 'm':
        {
          return (t * 0.3048).toString();
        }

      case 'cm':
        {
          return (t * 30.48).toString();
        }

      case 'km':
        {
          return (t * 0.0003048).toString();
        }

      case 'ft':
        {
          return l;
        }
    }
  } else {
    return l;
  }
}

String? lengthConverter(int u1, int u2, String l) {

  //      m       cm      km        ft        in
  //  m   1       100     0.001     3.2808    39.37
  //  cm  0.01    1       0.00001   0.032808  0.3937
  //  km  1000    100000  1         3280.8399 39370.0787
  //  ft  0.3048  30.48   0.0003048 1         12
  //  in  0.0254  2.54    0.0000254 0.0833    1

  List<List<double>> c =
      [
        [1.0, 100.0, 0.001, 3.2808, 39.37],
        [0.01, 1.0, 0.00001, 0.032808, 0.3937],
        [1000.0, 100000.0, 1.0, 3280.8399, 39370.0787],
        [0.3048, 30.48, 0.0003048, 1.0, 12.0],
        [0.0254, 2.54, 0.0000254, 0.0833, 1.0]
      ];

  double t = double.parse(l);

  return (c[u1][u2] * t).toString();
}
