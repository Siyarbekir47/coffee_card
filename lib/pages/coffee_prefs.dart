import 'package:coffee_card/shared/styled_body_text.dart';
import 'package:coffee_card/shared/styled_button.dart';
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
            const StyledBodyText("Strength: "),
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
            StyledButton(
              onPressed: incrementStrength,
              child: const Text("+"),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 10)),
        Row(
          children: [
            const StyledBodyText("Sugars: "),
            const SizedBox(
              width: 30,
            ),
            if (coffeeSugars == 0) const StyledBodyText("None"),
            for (var i = 0; i < coffeeSugars; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyledButton(
              onPressed: incrementSugars,
              child: const Text("+"),
            ),
          ],
        ),
      ],
    );
  }
}
