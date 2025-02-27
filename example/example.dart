import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        title: 'Examples',
        home: MyHomePage(),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //By default
            // LiteRollingSwitch(
            //   value: false,
            //   onChanged: (bool state) {
            //     print('turned ${(state) ? 'on' : 'off'}');
            //   },
            //   onDoubleTap: () {},
            //   onSwipe: () {},
            //   onTap: () {},
            // ),

            //Customized
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: LiteRollingSwitch(
                value: true,
                width: 120,
                height: 40,
                textOn: 'Visual',
                textOff: 'Text',
                colorOn: Colors.deepOrange,
                colorOff: Colors.blueGrey,
                iconOn: Icon(Icons.lightbulb_outline),
                iconOff: Icon(Icons.power_settings_new),
                animationDuration: const Duration(milliseconds: 300),
                onChanged: (bool state) {
                  print('turned ${(state) ? 'on' : 'off'}');
                },
                interact: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
