import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets/joystick_widget.dart';

class JoystickPage extends StatefulWidget {
  const JoystickPage({super.key});

  @override
  State<JoystickPage> createState() => _JoystickPageState();
}

class _JoystickPageState extends State<JoystickPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text('JoyStick'),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 64, right: 64),
            child: JoystickWidget(),
          ),
        ));
  }
}
