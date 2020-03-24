import 'package:flutter/material.dart';
import 'package:flutter_provider_demo/src/providers/heroesinfo.dart';
import 'package:provider/provider.dart';

class SuperFloatingAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final heroesInfo = Provider.of<HeroesInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.access_time),
          backgroundColor: Colors.red,
          onPressed: () => heroesInfo.heroe = 'Ironman',
        ),
        SizedBox(height: 10.0),
        FloatingActionButton(
          child: Icon(Icons.account_balance),
          backgroundColor: Colors.blue,
          onPressed: () => heroesInfo.heroe = 'Capitán América',
        ),
      ],
    );
  }
}