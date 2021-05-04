import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MaterialApp(
      home: AboutMe(),
      theme: ThemeData(primarySwatch: Colors.purple),
    ));

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://harshblog.xyz/about/",
    );
  }
}
