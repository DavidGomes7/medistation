import 'package:flutter/material.dart';

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
            color: Theme.of(context).colorScheme.inversePrimary,
            child: const SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: Icon(Icons.person),
                  ),
                  SizedBox(height: 8),
                  Text('Douglas Silva', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  Text('example@gmail.com'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Perfil'),
          ),
          const ListTile(
            leading: Icon(Icons.av_timer),
            title: Text('Meditação'),
          ),
          const ListTile(
            leading: Icon(Icons.tips_and_updates),
            title: Text('Dicas'),
          ),
          const ListTile(
            leading: Icon(Icons.notes),
            title: Text('Metas e Premiações'),
          ),
          const ListTile(
            leading: Icon(Icons.medical_information),
            title: Text('Exercícios respiratórios'),
          ),
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notificações e lembretes'),
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
