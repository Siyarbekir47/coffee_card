import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int coffeeStrength = 1;
  int coffeeSugars = 0;

  void incrementStrength() {
    setState(() {
      coffeeStrength = coffeeStrength < 5 ? coffeeStrength + 1 : 1;
    });
  }

  void incrementSugars() {
    setState(() {
      coffeeSugars = coffeeSugars < 5 ? coffeeSugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("Strength: "),
            Text("$coffeeStrength"),
            const SizedBox(
              width: 20,
            ),
            for (var i = 0; i < coffeeStrength; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown[700],
                foregroundColor: Colors.white,
              ),
              onPressed: incrementStrength,
              child: const Text("+"),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 10)),
        Row(
          children: [
            const Text("Sugars: "),
            Text("$coffeeSugars"),
            const SizedBox(
              width: 30,
            ),
            for (var i = 0; i < coffeeSugars; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown[700],
                foregroundColor: Colors.white,
              ),
              onPressed: incrementSugars,
              child: const Text("+"),
            ),
          ],
        ),
      ],
    );
  }
}
