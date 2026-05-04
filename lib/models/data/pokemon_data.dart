List<Map<String, String>> getPokemonList(String category) {
  switch (category) {
    case "Pokemon List":
      return [
        {
          'nama': 'Bulbasaur',
          'image': 'assets/images/bulbasaur.png',
          'title': 'Bulbasaur 🌱',
          'type 1': 'Grass',
          'type 2': 'Poison',
          'description':
              'Bulbasaur adalah Pokémon yang mengandalkan keseimbangan antara offense dan defense. Tanaman di punggungnya menyimpan energi matahari untuk memperkuat serangan.',
          'stats':
              'HP: 45 | Atk: 49 | Def: 49 | Sp. Atk: 65 | Sp. Def: 65 | Speed: 45',
          'ability': 'Overgrow',
          'weakness': 'Fire, Ice, Flying, Psychic',
          'evolution': 'Ivysaur (Lv.16)',
          'role':
              'Support / Tank awal game. Cocok untuk sustain (Leech Seed + Sleep Powder).',
          'partner':
              'Pikachu (nutup kelemahan Water/Flying), Growlithe (bantu lawan Ice & Bug), Geodude (tahan serangan Fire)',
        },
        {
          'nama': 'Charizard',
          'image': 'assets/images/charizard.png',
          'title': 'Charizard 🔥🐉',
          'type 1': 'Fire',
          'type 2': 'Flying',
          'description':
              'Charizard adalah attacker cepat dengan damage tinggi, terutama di Special Attack. Sangat berbahaya tapi punya kelemahan besar terhadap Rock-type.',
          'stats':
              'HP: 78 | Atk: 84 | Def: 78 | Sp. Atk: 109 | Sp. Def: 85 | Speed: 100',
          'ability': 'Blaze',
          'weakness': 'Rock (x4), Water, Electric',
          'evolution': 'Final',
          'role':
              'Special Attacker / Sweeper. Cocok untuk ngeburst musuh cepat.',
          'partner':
              'Blastoise (nutup kelemahan Rock), Jolteon (bantu lawan Water), Excadrill (counter Rock-type)',
        },
        {
          'nama': 'Blastoise',
          'image': 'assets/images/blastoise.png',
          'title': 'Blastoise 💧',
          'type 1': 'Water',
          'type 2': 'None',
          'description':
              'Blastoise adalah tank kuat dengan defense tinggi. Cocok untuk bertahan lama dan memberikan tekanan stabil.',
          'stats':
              'HP: 79 | Atk: 83 | Def: 100 | Sp. Atk: 85 | Sp. Def: 105 | Speed: 78',
          'ability': 'Torrent',
          'weakness': 'Electric, Grass',
          'evolution': 'Final',
          'role': 'Tank / Defensive Support. Bisa jadi wall di tim.',
          'partner':
              'Venusaur (nutup kelemahan Grass), Raichu (bantu Electric coverage), Dragonite (fleksibel attacker)',
        },
        {
          'nama': 'Pikachu',
          'image': 'assets/images/pikachu.png',
          'title': 'Pikachu ⚡',
          'type 1': 'Electric',
          'type 2': 'None',
          'description':
              'Pikachu adalah Pokémon cepat dengan serangan listrik yang efektif melawan Water dan Flying. Tapi cukup rapuh.',
          'stats':
              'HP: 35 | Atk: 55 | Def: 40 | Sp. Atk: 50 | Sp. Def: 50 | Speed: 90',
          'ability': 'Static',
          'weakness': 'Ground',
          'evolution': 'None (can evolve into Raichu)',
          'role':
              'Fast Attacker / Utility. Bisa jadi support dengan status (paralyze).',
          'partner':
              'Charizard (sinergi offense), Bulbasaur (bantu lawan Ground), Gyarados (kombinasi Water + Electric)',
        },
        {
          'nama': 'Gengar',
          'image': 'assets/images/gengar.png',
          'title': 'Gengar 👻',
          'type 1': 'Ghost',
          'type 2': 'Poison',
          'description':
              'Gengar adalah glass cannon dengan Special Attack tinggi dan kecepatan luar biasa. Cocok untuk menghabisi lawan dengan cepat.',
          'stats':
              'HP: 60 | Atk: 65 | Def: 60 | Sp. Atk: 130 | Sp. Def: 75 | Speed: 110',
          'ability': 'Cursed Body',
          'weakness': 'Ghost, Dark, Psychic',
          'evolution': 'Final',
          'role': 'Special Sweeper. Hit & run playstyle.',
          'partner':
              'Snorlax (jadi tank penutup), Tyranitar (cover Ghost weakness), Alakazam (combo psychic offense)',
        },
        {
          'nama': 'Dragonite',
          'image': 'assets/images/dragonite.png',
          'title': 'Dragonite 🐉',
          'type 1': 'Dragon',
          'type 2': 'Flying',
          'description':
              'Dragonite adalah pseudo-legendary dengan stat tinggi di hampir semua aspek. Walau terlihat ramah, dia sangat kuat di battle.',
          'stats':
              'HP: 91 | Atk: 134 | Def: 95 | Sp. Atk: 100 | Sp. Def: 100 | Speed: 80',
          'ability': 'Inner Focus',
          'weakness': 'Ice (x4), Rock, Dragon, Fairy',
          'evolution': 'Final',
          'role': 'Physical Sweeper / All-rounder.',
          'partner':
              'Heatran (tahan Ice), Magnezone (bantu lawan Fairy), Blastoise (balance tim)',
        },
        {
          'nama': 'Snorlax',
          'image': 'assets/images/snorlax.png',
          'title': 'Snorlax 😴',
          'type 1': 'Normal',
          'type 2': 'None',
          'description':
              'Snorlax adalah tank dengan HP besar. Sulit dikalahkan dan bisa jadi tembok tim.',
          'stats': 'HP: 160 | Atk: 110 | Def: 65 | Sp. Def: 110 | Speed: 30',
          'ability': 'Thick Fat',
          'weakness': 'Fighting',
          'evolution': 'Final',
          'role': 'Tank / Wall.',
          'partner':
              'Gengar (hindari Fighting), Togekiss (support), Excadrill (offense tambahan)',
        },
        {
          'nama': 'Eevee',
          'image': 'assets/images/eevee.png',
          'title': 'Eevee 🧬',
          'type 1': 'Normal',
          'type 2': 'None',
          'description':
              'Eevee unik karena punya banyak evolusi (Eeveelutions). Fleksibel sesuai kebutuhan tim.',
          'stats':
              'HP: 55 | Atk: 55 | Def: 50 | Sp. Atk: 45 | Sp. Def: 65 | Speed: 55',
          'ability': 'Adaptability',
          'weakness': 'Fighting',
          'evolution': 'Varies (Vaporeon, Jolteon, Flareon, etc.)',
          'role': 'Flexible / Support.',
          'partner': 'Tergantung evolusinya (Jolteon, Vaporeon, dll)',
        },
        {
          'nama': 'Vaporeon',
          'image': 'assets/images/vaporeon.png',
          'title': 'Vaporeon 💧',
          'type 1': 'Water',
          'type 2': 'None',
          'description': 'Tank spesial dengan HP besar dan sustain tinggi.',
          'stats':
              'HP: 130 | Atk: 65 | Def: 60 | Sp. Atk: 110 | Sp. Def: 95 | Speed: 65',
          'ability': 'Water Absorb',
          'weakness': 'Electric, Grass',
          'evolution': 'Final (Eevee evolution)',
          'role': 'Special Tank / Support.',
          'partner':
              'Jolteon (Electric coverage), Flareon (Fire coverage), Ferrothorn (defense kuat)',
        },
        {
          'nama': 'Jolteon',
          'image': 'assets/images/jolteon.png',
          'title': 'Jolteon ⚡',
          'type 1': 'Electric',
          'type 2': 'None',
          'description':
              'Salah satu Pokémon tercepat. Cocok untuk strike cepat.',
          'stats':
              'HP: 65 | Atk: 65 | Def: 60 | Sp. Atk: 110 | Sp. Def: 95 | Speed: 130',
          'ability': 'Volt Absorb',
          'weakness': 'Ground',
          'evolution': 'Final (Eevee evolution)',
          'role': 'Fast Special Sweeper.',
          'partner': 'Vaporeon, Charizard, Scizor',
        },
        {
          'nama': 'Flareon',
          'image': 'assets/images/flareon.png',
          'title': 'Flareon 🔥',
          'type 1': 'Fire',
          'type 2': 'None',
          'description': 'Damage fisik tinggi tapi agak lambat.',
          'stats': 'HP: 65 | Atk: 130 | Def: 60 | Sp. Def: 110 | Speed: 65',
          'ability':
              'Flash Fire (implied from context, but original omits; using common ability)',
          'weakness': 'Water, Ground, Rock',
          'evolution': 'Final (Eevee evolution)',
          'role': 'Physical Attacker.',
          'partner': 'Jolteon, Vaporeon, Tyranitar',
        },
        {
          'nama': 'Lucario',
          'image': 'assets/images/lucario.png',
          'title': 'Lucario 🐺',
          'type 1': 'Fighting',
          'type 2': 'Steel',
          'description': 'Fighter dengan aura power, bisa mixed attacker.',
          'stats': 'HP: 70 | Atk: 110 | Def: 70 | Sp. Atk: 115 | Speed: 90',
          'ability': 'Steadfast / Inner Focus (original omitted, using common)',
          'weakness': 'Fire, Fighting, Ground',
          'evolution': 'Final (from Riolu)',
          'role': 'Mixed Sweeper.',
          'partner': 'Gengar, Garchomp, Rotom-Wash',
        },
        {
          'nama': 'Greninja',
          'image': 'assets/images/greninja.png',
          'title': 'Greninja 🥷',
          'type 1': 'Water',
          'type 2': 'Dark',
          'description':
              'Ninja Pokémon super cepat dengan ability unik (Protean).',
          'stats': 'HP: 72 | Atk: 95 | Sp. Atk: 103 | Speed: 122',
          'ability': 'Protean (or Torrent)',
          'weakness': 'Electric, Grass, Fighting, Bug, Fairy',
          'evolution': 'Final (from Froakie)',
          'role': 'Speed Sweeper.',
          'partner': 'Talonflame, Aegislash, Garchomp',
        },
        {
          'nama': 'Machamp',
          'image': 'assets/images/machamp.png',
          'title': 'Machamp 💪',
          'type 1': 'Fighting',
          'type 2': 'None',
          'description': 'Petarung kuat dengan 4 tangan.',
          'stats': 'HP: 90 | Atk: 130 | Def: 80 | Speed: 55',
          'ability': 'Guts / No Guard',
          'weakness': 'Flying, Psychic, Fairy',
          'evolution': 'Final (from Machop)',
          'role': 'Physical Attacker.',
          'partner': 'Alakazam, Gengar, Snorlax',
        },
        {
          'nama': 'Alakazam',
          'image': 'assets/images/alakazam.png',
          'title': 'Alakazam 🧠',
          'type 1': 'Psychic',
          'type 2': 'None',
          'description': 'Glass cannon dengan kecerdasan tinggi.',
          'stats': 'HP: 55 | Sp. Atk: 135 | Speed: 120',
          'ability': 'Synchronize / Inner Focus',
          'weakness': 'Bug, Ghost, Dark',
          'evolution': 'Final (from Abra)',
          'role': 'Special Sweeper.',
          'partner': 'Machamp, Gengar, Scizor',
        },
        {
          'nama': 'Gyarados',
          'image': 'assets/images/gyarados.png',
          'title': 'Gyarados 🐉',
          'type 1': 'Water',
          'type 2': 'Flying',
          'description': 'Agresif dan kuat secara fisik.',
          'stats': 'HP: 95 | Atk: 125',
          'ability': 'Intimidate',
          'weakness': 'Electric (x4), Rock',
          'evolution': 'Final (from Magikarp)',
          'role': 'Physical Sweeper.',
          'partner': 'Jolteon, Garchomp, Ferrothorn',
        },
        {
          'nama': 'Tyranitar',
          'image': 'assets/images/tyranitar.png',
          'title': 'Tyranitar 🪨',
          'type 1': 'Rock',
          'type 2': 'Dark',
          'description': 'Tank + attacker kuat, summon sandstorm.',
          'stats': 'HP: 100 | Atk: 134',
          'ability': 'Sand Stream',
          'weakness': 'Fighting (x4), Ground, Bug, Steel, Water, Grass, Fairy',
          'evolution': 'Final (from Pupitar)',
          'role': 'Tank / Sweeper.',
          'partner': 'Excadrill, Garchomp, Rotom-Wash',
        },
      ];
    default:
      return [];
  }
}
