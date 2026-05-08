import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:pokemon_dynamo_dev/models/data/pokemon_data.dart';
import 'package:pokemon_dynamo_dev/models/widget/card.dart';
import 'package:pokemon_dynamo_dev/screen/pokemon_detail_screen.dart';
import 'package:pokemon_dynamo_dev/screen/credit_profile_screen.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class PokemonGoHome extends StatefulWidget {
  const PokemonGoHome({super.key});

  @override
  State<PokemonGoHome> createState() => _PokemonGoHomeState();
}

class _PokemonGoHomeState extends State<PokemonGoHome> {
  final List<Map<String, String>> _allPokemon = getPokemonList("Pokemon List");
  String _selectedCategory = "All";
  late List<String> _categories;

  @override
  void initState() {
    super.initState();
    final types = _allPokemon
        .map((p) => p['type 1'] ?? 'Unknown')
        .toSet()
        .toList();
    types.sort();
    _categories = ["All", ...types];
  }

  @override
  Widget build(BuildContext context) {
    final filteredPokemon = _selectedCategory == "All"
        ? _allPokemon
        : _allPokemon.where((p) => p['type 1'] == _selectedCategory || p['type 2'] == _selectedCategory).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'PokéWiki',
                      style: TextStyle(
                        fontFamily: 'SatoshiBold',
                        fontSize: 42,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreditProfileScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.05),
                          ),
                        ),
                        child: const Icon(LucideIcons.user, color: Colors.black54),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                SizedBox(
                  height: 40,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: _categories.length,
                    separatorBuilder: (_, __) => const Gap(10),
                    itemBuilder: (context, index) {
                      final category = _categories[index];
                      final isSelected = _selectedCategory == category;
                      return GestureDetector(
                        onTap: () => setState(() => _selectedCategory = category),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: isSelected ? const Color(0xff399494) : Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              category,
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.black,
                                fontFamily: "SatoshiMedium",
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const Gap(25),
                Image.asset('assets/images/banner_home.png'),
                const Gap(40),
                const Text(
                  'Lets Explore the Pokemon!',
                  style: TextStyle(
                    fontFamily: "SatoshiBold",
                    fontSize: 24,
                  ),
                ),
                const Gap(15),
                ...filteredPokemon.map((pokemon) {
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
                        type2: pokemon['type 2'] != null && pokemon['type 2'] != 'None'
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
