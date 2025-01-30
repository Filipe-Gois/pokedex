import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/utils.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonCard({
    super.key,
    required this.pokemon,
  });

  void navigateToPokemonInfoScreen(BuildContext context) {
    Navigator.pushNamed(context, "/pokemon", arguments: pokemon);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateToPokemonInfoScreen(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .4), // Cor da sombra
                  blurRadius: 3, // O desfoque da sombra
                  offset: Offset(
                      4, 4), // Deslocamento da sombra (horizontal, vertical)
                  spreadRadius:
                      2, // Espalhamento da sombra (quanto mais alto, maior o efeito de sombra)
                ),
              ],
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      color: ColorsApp.gray,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Text(
                            pokemon.position.toString(),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        pokemon.imageUrl,
                        width: 50,
                      ),
                    ),
                    Text(pokemon.name),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
