import 'package:flutter/material.dart';
import 'package:flutter_provider_demo/src/pages/home_page.dart';
import 'package:flutter_provider_demo/src/providers/heroesinfo.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HeroesInfo(),
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (BuildContext context) => HomePage()
        }
      ),
    );
  }
}