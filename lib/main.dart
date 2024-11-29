import 'package:flutter/material.dart';

import 'interfaces/intefaces.dart';
import 'medi_station.dart';

void main() {
  runApp(
    MediStation(
      injector: GetItImpl(),
    ),
  );
}
