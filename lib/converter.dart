String? lengthConverter(String u1, String u2, String l) {
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