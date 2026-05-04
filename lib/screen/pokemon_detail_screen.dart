import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:lucide_icons_flutter/lucide_icons.dart';

class PokemonDetailScreen extends StatelessWidget {
  final Map<String, dynamic> pokemon;

  const PokemonDetailScreen({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            IconButton(
              icon: Icon(LucideIcons.chevronLeft, size: 28),
              onPressed: () {
                Navigator.pop(context);
              },
            ),

            Text(
              pokemon['nama'] ?? '',
              style: TextStyle(fontSize: 28, fontFamily: "SatoshiBold"),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18.0,
            vertical: 10,
          ),
          child: Column(
            children: [
              Gap(25),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(pokemon['image']),
              ),

              Gap(20),

              Text(
                'Tipe Pokemon',
                style: TextStyle(fontFamily: "SatoshiBold", fontSize: 24),
              ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff399494).withAlpha(38),
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 3.0,
                      ),
                      child: Text(
                        '${pokemon['type 1']} / ${pokemon['type 2']}',
                        style: TextStyle(
                          color: Color(0xff399494),
                          fontFamily: "SatoshiMedium",
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Gap(25),

              Text(
                'Deskripsi',
                style: TextStyle(fontFamily: "SatoshiBold", fontSize: 24),
              ),

              Text(
                pokemon['description'] ?? '',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Color.fromARGB(255, 129, 129, 129),
                  fontFamily: "SatoshiMedium",
                  fontSize: 16,
                ),
              ),
              Gap(20),
              Text(
                'Stats',
                style: TextStyle(fontFamily: "SatoshiBold", fontSize: 24),
              ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Color(0xffFBF2E3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 3.0,
                      ),
                      child: Text(
                        '${pokemon['stats']}',
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 1.1,
                          color: Color(0xff935100),
                          fontFamily: "SatoshiMedium",
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Gap(20),
              Text(
                'Ability',
                style: TextStyle(fontFamily: "SatoshiBold", fontSize: 24),
              ),
              Gap(20),
              Text(
                '${pokemon['ability']}',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 1.1,
                  color: Color(0xff935100),
                  fontFamily: "SatoshiMedium",
                  fontSize: 24,
                ),
              ),
              Gap(20),
              Text(
                'Weakness',
                style: TextStyle(fontFamily: "SatoshiBold", fontSize: 24),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color(0xffFF006E).withAlpha(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 3.0,
                  ),
                  child: Text(
                    '${pokemon['weakness']}',
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: 1.1,
                      color: Color(0xffFF006E),
                      fontFamily: "SatoshiMedium",
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Gap(20),
              Text(
                'Evolution',
                style: TextStyle(fontFamily: "SatoshiBold", fontSize: 24),
              ),
              Gap(20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color(0xff399494).withAlpha(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 3.0,
                  ),
                  child: Text(
                    '${pokemon['evolution']}',
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: 1.1,
                      color: Color(0xff399494),
                      fontFamily: "SatoshiMedium",
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Gap(20),
              Text(
                'Role',
                style: TextStyle(fontFamily: "SatoshiBold", fontSize: 24),
              ),
              Gap(20),
              Text(
                '${pokemon['role']}',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 1.1,
                  color: Color(0xff935100),
                  fontFamily: "SatoshiMedium",
                  fontSize: 24,
                ),
              ),
              Gap(20),
              Text(
                'Partner',
                style: TextStyle(fontFamily: "SatoshiBold", fontSize: 24),
              ),
              Gap(20),
              Text(
                '${pokemon['partner']}',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 1.1,
                  color: Color(0xff935100),
                  fontFamily: "SatoshiMedium",
                  fontSize: 24,
                ),
              ),
              Gap(55),
            ],
          ),
        ),
      ),
    );
  }
}
