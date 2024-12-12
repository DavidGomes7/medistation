import 'package:flutter/material.dart';

import '../../../theme/medi_colors.dart';
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
              margin: EdgeInsets.symmetric(vertical: 20),
              title: 'Crie um espaço dedicado', 
              content: 'Encontre um lugar tranquilo e confortável onde você não será incomodado. Criar um espaço dedicado à meditação promove a concentração, estabelece rotina, reduz distrações e promove segurança emocional. Uma área específica também pode ajudar a mente a se preparar para a meditação, reforçando o hábito e potencializando o foco', 
              icon: Icons.info_outline,
            ),
            TipsBox(
              title: 'Escolha o momento certo', 
              content: 'O tempo é importante porque pode impactar a qualidade e a eficácia da sua prática. O ritmo de cada pessoa varia - algumas pessoas ficam mais alertas e receptivas pela manhã, enquanto outros podem achar a noite mais propícia ao relaxamento. Meditar quando você está naturalmente mais relaxado ou focado pode tornar mais fácil entrar em um estado meditativo e mantê-lo. Além disso, encontrar um horário consistente em sua rotina pode ajudar a estabelecer a meditação como um hábito e torná-lo mais fácil de manter.', 
              icon: Icons.access_time,
            ),
            TipsBox(
              margin: EdgeInsets.symmetric(vertical: 20),
              title: 'Comece com sessões curtas', 
              content: 'Começar com sessões curtas de meditação pode ser extremamente benéfico para iniciantes. Torna a prática acessível e gerenciável, reduzindo o risco de frustração ou esgotamento. Começar com apenas alguns minutos por dia permite que os iniciantes desenvolvam gradualmente sua concentração e familiaridade com a prática. À medida que ficam mais confortáveis, eles podem então estender a duração das sessões', 
              icon: Icons.access_alarm,
            ),
            TipsBox(
              title: 'Seja paciente consigo mesmo', 
              content: 'Entenda que sua mente vai divagar, e está tudo bem. A prática de retornar o foco à meditação é o que realmente importa. Lembre-se também de que levará algum tempo para você ver os frutos do seu trabalho; os resultados da meditação não são imediatos. ', 
              icon: Icons.accessibility,
            ),
            
          ],
        ),
      );
  }
}
