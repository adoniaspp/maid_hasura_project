import 'package:alice/views/material_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/controller_user.dart';

/*void main() => runApp(DevicePreview(
      builder: (context) => alice(),
    ));*/

void main() => runApp(alice());

class alice extends StatefulWidget {
  @override
  _aliceState createState() => _aliceState();
}

class _aliceState extends State<alice> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ControllerUser>(
          create: (_) => ControllerUser(),
        )
      ],
      child: App(),
    );
  }
}
