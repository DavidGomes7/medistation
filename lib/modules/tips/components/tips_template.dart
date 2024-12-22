import 'package:flutter/material.dart';
import '../../../theme/medi_colors.dart';
import '../../../core/constants/tips_box_texts.dart';
import '../../home/components/components.dart';
import '../controller/controller.dart';
import 'components.dart';

class TipsTemplate extends StatelessWidget {
  const TipsTemplate({super.key, required this.controller});

  final TipsCubit controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dicas'),
        centerTitle: true,
        backgroundColor: MediColors.primary,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
          children: const [
            TipsBox(
              title: title1, 
              content: tip1, 
              icon: Icons.info_outline,
            ),
            TipsBox(
              margin: EdgeInsets.symmetric(vertical: 20),
              title: title2, 
              content: tip2, 
              icon: Icons.access_time,
            ),
            TipsBox(
              title: title3, 
              content: tip3, 
              icon: Icons.access_alarm,
            ),
            TipsBox(
              margin: EdgeInsets.only(top: 20),
              title: title4, 
              content: tip4, 
              icon: Icons.accessibility,
            ),
            
          ],
        ),
      );
  }
}
