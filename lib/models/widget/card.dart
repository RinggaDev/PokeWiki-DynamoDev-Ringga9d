// import 'package:flutter/material.dart';

// class CardPokemon extends StatelessWidget {
//   final String title;
//   final String type1;
//   final String type2;
//   final String image;
//   // final String description;
//   // final String stats;
//   // final String ability;
//   // final String weakness;
//   // final String evolution;
//   // final String role;
//   // final String partner;
//   const CardPokemon({
//     super.key,
//     required this.title,
//     required this.type1,
//     required this.type2,
//     required this.image,
//     // required this.description,
//     // required this.stats,
//     // required this.ability,
//     // required this.weakness,
//     // required this.evolution,
//     // required this.role,
//     // required this.partner,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 400,
//       width: 350,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(18),
//         color: Colors.white,
//         border: Border.all(color: Colors.black.withValues(alpha: 0.2)),
//       ),
//       child: Column(
//         children: [
//           Image.asset(image),
//           Row(
//             children: [
//               Text(title),
//               Column(
//                 children: [
//                   Text(type1),
//                   Text(type2),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

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
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.black.withOpacity(0.1)),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(0.1),
        //     blurRadius: 25,
        //     offset: const Offset(0, 2),
        //   ),
        // ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity, // optional
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.0),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover, // optional
                ),
              ),
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'SatoshiBold',
                    fontSize: 32,
                  ),
                ),
                Column(
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
                          (type1 + type2),
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
              ],
            ),
            Gap(10),
          ],
        ),
      ),
    );
  }
}
