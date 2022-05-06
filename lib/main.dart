import 'dart:io';

import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';

import 'left_panel.dart';
import 'pages/right_panel.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    DesktopWindow.setMinWindowSize(const Size(1080, 650));
    DesktopWindow.setFullScreen(true);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            LeftPanel(),
            RightPanel(),
          ],
        ),
      ),
    );
  }
}
