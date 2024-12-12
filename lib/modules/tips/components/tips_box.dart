import 'package:flutter/material.dart';

import '../../../theme/medi_colors.dart';

class TipsBox extends StatelessWidget{
  final String title;
  final String content;
  final IconData icon;
  final EdgeInsetsGeometry? margin;
  const TipsBox({super.key, required this.title, required this.content, required this.icon, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: MediColors.background,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ]
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon, color: MediColors.primary),
              SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Text(
            content,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
              height: 1.5
            ),
          )
        ],
      ),
    );
  }
}