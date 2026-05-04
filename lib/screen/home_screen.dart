import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:pokemon_dynamo_dev/models/data/pokemon_data.dart';
import 'package:pokemon_dynamo_dev/models/widget/card.dart';
import 'package:pokemon_dynamo_dev/screen/pokemon_detail_screen.dart';

class PokemonGoHome extends StatelessWidget {
  const PokemonGoHome({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemonList = getPokemonList("Pokemon List");

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(45),
                Text(
                  'PokéWiki',
                  style: TextStyle(
                    fontFamily: 'SatoshiBold',
                    fontSize: 42,
                  ),
                ),
                Gap(5),
                Image.asset('assets/images/banner_home.png'),
                Gap(40),
                Text(
                  'Lets Explore the Pokemon!',
                  style: TextStyle(
                    fontFamily: "SatoshiBold",
                    fontSize: 24,
                  ),
                ),
                Gap(15),
                ...pokemonList.map((pokemon) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              PokemonDetailScreen(pokemon: pokemon),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: CardPokemon(
                        title: pokemon['nama'] ?? 'Unknown',
                        type1: pokemon['type 1'] ?? '',
                        type2: pokemon['type 2'] != null
                            ? ' / ${pokemon['type 2']}'
                            : '',
                        image: pokemon['image'] ?? '',
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
