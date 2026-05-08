import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardPokemon extends StatelessWidget {
  final String title;
  final String type1;
  final String type2;
  final String image;

  const CardPokemon({
    super.key,
    required this.title,
    required this.type1,
    required this.type2,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xFFF3F4F6)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                color: const Color(0xFFF9FAFB),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Hero(
                  tag: 'pokemon-$title',
                  child: Image.asset(
                    image,
                    height: 140,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontFamily: 'SatoshiBold',
                        fontSize: 28,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: const Color(0xff399494).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      type1 + (type2.isNotEmpty ? type2 : ""),
                      style: const TextStyle(
                        color: Color(0xff399494),
                        fontFamily: "SatoshiBold",
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(8),
          ],
        ),
      ),
    );
  }
}
