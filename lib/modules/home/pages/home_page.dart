import 'package:flutter/material.dart';

import '../../../interfaces/intefaces.dart';
import '../components/home_template.dart';
import '../controller/controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeTemplate(
      controller: injector.get<HomeCubit>(),
    );
  }
}
