import 'package:flutter/material.dart';

import '../../../routes/routes.dart';
import '../../../theme/theme.dart';

class HomeMediDrawer extends StatelessWidget {
  const HomeMediDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: MediColors.primary),
            currentAccountPicture: CircleAvatar(
              backgroundColor: MediColors.background.withOpacity(0.5),
              child: const Icon(Icons.person),
            ),
            accountName: const Text('Douglas Silva', style: TextStyle(fontSize: 16)),
            accountEmail: const Text('example@gmail.com'),
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
            onTap: MediNavigator.exercise,
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
