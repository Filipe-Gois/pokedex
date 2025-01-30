import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/utils.dart';

class PokemonInfoScreen extends StatelessWidget {
  const PokemonInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemonSelecionado =
        ModalRoute.of(context)!.settings.arguments as Pokemon;

    void backScreen() {
      Navigator.pop(context);
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 10,
                    children: [
                      GestureDetector(
                          onTap: backScreen,
                          child: Icon(Icons.arrow_back, size: 32)),
                      Text(
                        pokemonSelecionado.name,
                        style: TextStyle(fontSize: 24),
                      )
                    ],
                  ),
                  Text(
                    "#${pokemonSelecionado.position.toString()}",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
