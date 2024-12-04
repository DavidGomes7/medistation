import 'package:flutter/material.dart';

import '../../../theme/theme.dart';
import '../../../routes/routes.dart';

class MediDrawer extends StatelessWidget {
  const MediDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            width: double.maxFinite,
            color: MediColors.primary,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: MediColors.background.withOpacity(0.5),
                    child: const Icon(Icons.person),
                  ),
                  const SizedBox(height: 8),
                  const Text('Douglas Silva', style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 8),
                  const Text('example@gmail.com'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Perfil'),
            onTap: MediNavigator.profile,
          ),
          const ListTile(
            leading: Icon(Icons.tips_and_updates),
            title: Text('Dicas'),
            onTap: MediNavigator.tips,
          ),
          const ListTile(
            leading: Icon(Icons.notes),
            title: Text('Metas e Premiações'),
            onTap: MediNavigator.goal,
          ),
          const ListTile(
            leading: Icon(Icons.medical_information),
            title: Text('Exercícios respiratórios'),
          ),
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notificações e lembretes'),
            onTap: MediNavigator.notification,
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
          ),
          const ListTile(
            leading: Icon(Icons.logout_rounded, color: Colors.red),
            title: Text('Sair', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
