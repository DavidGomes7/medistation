import 'package:flutter/material.dart';

import '../../../models/models.dart';
import '../../../theme/theme.dart';

class GoalsCard extends StatefulWidget {
  const GoalsCard({
    super.key,
    required this.missions,
    required this.onChanged,
  });

  final List<MissionModel> missions;
  final void Function() onChanged;

  @override
  State<GoalsCard> createState() => _GoalsCardState();
}

class _GoalsCardState extends State<GoalsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: MediColors.accent2,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListView.builder(
        itemCount: widget.missions.length,
        itemBuilder: (context, index) {
          final item = widget.missions[index];
          return Row(
            children: [
              Checkbox(
                value: item.isComplete,
                onChanged: (value) {
                  setState(() {});
                  widget.onChanged.call();
                },
              ),
              Text(item.content),
            ],
          );
        },
      ),
    );
  }
}
