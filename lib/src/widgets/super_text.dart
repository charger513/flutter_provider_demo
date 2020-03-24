import 'package:flutter/material.dart';
import 'package:flutter_provider_demo/src/providers/heroesinfo.dart';
import 'package:provider/provider.dart';

class SuperText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // final heroesInfo = Provider.of<HeroesInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Consumer<HeroesInfo>(
          builder: (context, heroesInfo, _) => Text(heroesInfo.heroe, style: TextStyle(fontSize: 30.0, color: heroesInfo.color)),
        )

        // Text(heroesInfo.heroe, style: TextStyle(fontSize: 30.0, color: Colors.red)),
      ],
    );
  }
}