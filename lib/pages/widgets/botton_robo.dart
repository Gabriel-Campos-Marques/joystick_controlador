import 'package:carrinho/pages/joystick_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BottonRobo extends StatelessWidget {
  const BottonRobo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const JoystickPage(),
            ),
          ).then(
            (value) => SystemChrome.setPreferredOrientations(
                [DeviceOrientation.portraitUp]),
          );
        },
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.gamepad, size: 64),
              SizedBox(
                height: 20,
              ),
              Text(
                'Controlar Robo',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
