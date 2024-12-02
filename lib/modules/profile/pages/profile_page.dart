import 'package:flutter/material.dart';

import '../../../interfaces/intefaces.dart';
import '../components/components.dart';
import '../controller/controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileTemplate(
      controller: injector.get<ProfileCubit>(),
    );
  }
}
