import 'package:flutter/widgets.dart';
import 'package:flutter_joystick/flutter_joystick.dart';

import '../../services/robo_services.dart';

class JoystickWidget extends StatelessWidget {
  const JoystickWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String sUltimaReguisicaoFrente = '';
    String sUltimaReguisicaoAtras = '';
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Joystick(
          mode: JoystickMode.vertical,
          listener: (details) {
            RoboServices roboServices = RoboServices();
            if ((sUltimaReguisicaoAtras != 'FRENTE') &&
                (sUltimaReguisicaoAtras != 'VOLTAR')) {
              if (details.y < -.5) {
                roboServices.andar(posicao: 'FRENTE');
                sUltimaReguisicaoAtras = 'FRENTE';
              } else if (details.y > .5) {
                roboServices.andar(posicao: 'VOLTAR');
                sUltimaReguisicaoAtras = 'VOLTAR';
              }
            } else if (details.y == 0) {
              roboServices.andar(posicao: 'PARAR_ATRAS');
              sUltimaReguisicaoAtras = 'PARAR_ATRAS';
            }
          },
        ),
        Joystick(
          mode: JoystickMode.horizontal,
          listener: (details) {
            RoboServices roboServices = RoboServices();
            if ((sUltimaReguisicaoFrente != 'DIREITA') &&
                (sUltimaReguisicaoFrente != 'ESQUERDA')) {
              if ((details.x > .5)) {
                roboServices.andar(posicao: 'DIREITA');
                sUltimaReguisicaoFrente = 'DIREITA';
              } else if ((details.x < -.5)) {
                roboServices.andar(posicao: 'ESQUERDA');
                sUltimaReguisicaoFrente = 'ESQUERDA';
              }
            } else if ((details.x == 0)) {
              roboServices.andar(posicao: 'PARAR_FRENTE');
              sUltimaReguisicaoFrente = 'PARAR_FRENTE';
            }
          },
        ),
      ],
    );
  }
}
