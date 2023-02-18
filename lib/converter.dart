String? lengthConverter(int u1, int u2, String l) {
  //      m       cm      km        ft        in
  //  m   1       100     0.001     3.2808    39.37
  //  cm  0.01    1       0.00001   0.032808  0.3937
  //  km  1000    100000  1         3280.8399 39370.0787
  //  ft  0.3048  30.48   0.0003048 1         12
  //  in  0.0254  2.54    0.0000254 0.0833    1

  List<List<double>> c = [
    [1.0, 100.0, 0.001, 3.2808, 39.37],
    [0.01, 1.0, 0.00001, 0.032808, 0.3937],
    [1000.0, 100000.0, 1.0, 3280.8399, 39370.0787],
    [0.3048, 30.48, 0.0003048, 1.0, 12.0],
    [0.0254, 2.54, 0.0000254, 0.0833, 1.0]
  ];

  double t = double.parse(l);

  return (c[u1][u2] * t).toString();
}

String? tempratureConverter(int u1, int u2, String t) {
  //  celsius fahrenheit  kelvin

  double temp = double.parse(t);

  switch (u1) {
    case 0:
      {
        switch (u2) {
          case 0:
            {
              return t;
            }
          case 1:
            {
              return ((temp * 9 / 5) + 32).toString();
            }
          case 2:
            {
              return (temp + 273.15).toString();
            }
        }
      }
      break;

    case 1:
      {
        switch (u2) {
          case 0:
            {
              return ((temp - 32) * 5 / 9).toString();
            }
          case 1:
            {
              return t;
            }
          case 2:
            {
              return (((temp - 32) * 5 / 9) + 273.15).toString();
            }
        }
      }
      break;

    case 2:
      {
        switch (u2) {
          case 0:
            {
              return (temp - 273.15).toString();
            }
          case 1:
            {
              return (((temp - 273.15) * 9 / 5) + 32).toString();
            }
          case 2:
            {
              return t;
            }
        }
      }
      break;
  }
}

String? massConverter(int u1, int u2, String m) {
  double n = double.parse(m);

  //      kg        g         mg          lb        oz
  //  kg  1         1000      1000000     2.2046    35.2739
  //  g   0.001     1         1000        0.0022    0.03527
  //  mg  0.000001  0.001     1           0.0000022 0.00003527
  //  lb  0.4535    453.5923  453592.37   1         16
  //  oz  0.02834   28.3495   28349.5231  0.0625    1

  List<List<double>> c = [
    [1.0, 1000.0, 1000000.0, 2.2046, 35.2739],
    [0.001, 1.0, 1000.0, 0.0022, 0.03527],
    [0.000001, 0.001, 1.0, 0.0000022, 0.00003527],
    [0.4535, 453.5923, 453592.37, 1.0, 16.0],
    [0.02834, 28.3495, 28349.5231, 0.0625, 1.0]
  ];

  return (c[u1][u2] * n).toString();
}

String? speedConverter(int u1, int u2, String s) {
  double v = double.parse(s);

  //        km/h    m/s     mph     fps
  //  km/h  1       0.2777  0.6213  0.9113
  //  m/s   3.6     1       2.2369  3.2808
  //  mph   1.6093   0.4470  1       1.4666
  //  fps   1.09728 0.3048  0.6818  1

  List<List<double>> c = [
    [1.0, 0.2777, 0.6213, 0.9113],
    [3.6, 1.0, 2.2369, 3.2808],
    [1.6093, 0.4470, 1.0, 1.4666],
    [1.09728, 0.3048, 0.6818, 1.0]
  ];

  return (c[u1][u2] * v).toString();
}
