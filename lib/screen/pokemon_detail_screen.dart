import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class PokemonDetailScreen extends StatelessWidget {
  final Map<String, dynamic> pokemon;

  const PokemonDetailScreen({super.key, required this.pokemon});

  Color _getTypeColor(String? type) {
    switch (type?.toLowerCase()) {
      case 'grass':
        return const Color(0xFF6890F0);
      case 'poison':
        return const Color(0xFFA040A0);
      case 'fire':
        return const Color(0xFFF08030);
      case 'flying':
        return const Color(0xFFA890F0);
      case 'water':
        return const Color(0xFF6890F0);
      case 'electric':
        return const Color(0xFFF8D030);
      case 'ghost':
        return const Color(0xFF705898);
      case 'dragon':
        return const Color(0xFF7038F8);
      case 'normal':
        return const Color(0xFFA8A878);
      case 'fighting':
        return const Color(0xFFC03028);
      case 'steel':
        return const Color(0xFFB8B8D0);
      case 'dark':
        return const Color(0xFF705848);
      case 'rock':
        return const Color(0xFFB8A038);
      case 'psychic':
        return const Color(0xFFF85888);
      case 'fairy':
        return const Color(0xFFEE99AC);
      default:
        return const Color(0xFF399494);
    }
  }

  @override
  Widget build(BuildContext context) {
    final primaryTypeColor = _getTypeColor(pokemon['type 1']?.toString());

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.5),
                child: IconButton(
                  icon: const Icon(
                    LucideIcons.chevronLeft,
                    color: Colors.black,
                    size: 20,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ),
            backgroundColor: primaryTypeColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      primaryTypeColor.withOpacity(0.6),
                      Colors.white,
                    ],
                  ),
                ),
                child: Center(
                  child: Hero(
                    tag: 'pokemon-${pokemon['nama']}',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset(
                        pokemon['image'],
                        height: 220,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          pokemon['nama'] ?? '',
                          style: const TextStyle(
                            fontSize: 36,
                            fontFamily: "SatoshiBold",
                            height: 1.1,
                          ),
                        ),
                      ),
                      Text(
                        '#${(pokemon['nama'].toString().length * 123 % 999).toString().padLeft(3, '0')}',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "SatoshiBold",
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                  const Gap(12),
                  Row(
                    children: [
                      _buildTypeChip(pokemon['type 1']?.toString() ?? 'None'),
                      if (pokemon['type 2'] != null &&
                          pokemon['type 2'] != 'None') ...[
                        const Gap(8),
                        _buildTypeChip(pokemon['type 2']?.toString() ?? 'None'),
                      ],
                    ],
                  ),
                  const Gap(32),
                  _buildSectionTitle('Description'),
                  Text(
                    pokemon['description'] ?? '',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "SatoshiMedium",
                      color: Colors.grey[700],
                      height: 1.6,
                    ),
                  ),
                  const Gap(32),
                  _buildSectionTitle('Base Stats'),
                  _buildStatsSection(pokemon['stats']?.toString()),
                  const Gap(32),
                  _buildSectionTitle('Abilities & Evolution'),
                  Row(
                    children: [
                      Expanded(
                        child: _buildInfoCard(
                          'Ability',
                          pokemon['ability']?.toString(),
                          LucideIcons.zap,
                          const Color(0xFFF8D030),
                        ),
                      ),
                      const Gap(16),
                      Expanded(
                        child: _buildInfoCard(
                          'Evolution',
                          pokemon['evolution']?.toString(),
                          LucideIcons.trendingUp,
                          const Color(0xFF78C850),
                        ),
                      ),
                    ],
                  ),
                  const Gap(24),
                  _buildSectionTitle('Battle Strategy'),
                  _buildInfoCard(
                    'Weaknesses',
                    pokemon['weakness']?.toString(),
                    LucideIcons.shieldAlert,
                    const Color(0xFFC03028),
                    fullWidth: true,
                  ),
                  const Gap(16),
                  _buildInfoCard(
                    'Role in Team',
                    pokemon['role']?.toString(),
                    LucideIcons.swords,
                    const Color(0xFF7038F8),
                    fullWidth: true,
                  ),
                  const Gap(16),
                  _buildInfoCard(
                    'Best Synergy Partners',
                    pokemon['partner']?.toString(),
                    LucideIcons.users,
                    const Color(0xFF6890F0),
                    fullWidth: true,
                  ),
                  const Gap(60),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTypeChip(String type) {
    final color = _getTypeColor(type);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Text(
        type.toUpperCase(),
        style: const TextStyle(
          color: Colors.white,
          fontFamily: "SatoshiBold",
          fontSize: 12,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontFamily: "SatoshiBold",
          letterSpacing: -0.5,
        ),
      ),
    );
  }

  Widget _buildStatsSection(String? statsString) {
    if (statsString == null) return const SizedBox();
    final stats = statsString.split('|');
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xFFF3F4F6)),
      ),
      child: Column(
        children: stats.map((s) {
          final parts = s.split(':');
          if (parts.length != 2) return const SizedBox();
          final label = parts[0].trim();
          final valueStr = parts[1].trim();
          final value = double.tryParse(valueStr) ?? 0;

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                SizedBox(
                  width: 65,
                  child: Text(
                    label,
                    style: TextStyle(
                      fontFamily: "SatoshiBold",
                      fontSize: 13,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      FractionallySizedBox(
                        widthFactor: (value / 160).clamp(0.05, 1.0),
                        child: Container(
                          height: 10,
                          decoration: BoxDecoration(
                            color: _getStatColor(label),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: _getStatColor(label).withOpacity(0.3),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(12),
                SizedBox(
                  width: 35,
                  child: Text(
                    value.toInt().toString(),
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontFamily: "SatoshiBold",
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Color _getStatColor(String label) {
    switch (label.toLowerCase()) {
      case 'hp':
        return const Color(0xFFFF5959);
      case 'atk':
        return const Color(0xFFF5AC78);
      case 'def':
        return const Color(0xFFFAE078);
      case 'sp. atk':
        return const Color(0xFF9DB7F5);
      case 'sp. def':
        return const Color(0xFFA7DB8D);
      case 'speed':
        return const Color(0xFFFA92B2);
      default:
        return const Color(0xFFB8B8D0);
    }
  }

  Widget _buildInfoCard(
    String title,
    String? value,
    IconData icon,
    Color themeColor, {
    bool fullWidth = false,
  }) {
    return Container(
      width: fullWidth ? double.infinity : null,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xFFF3F4F6)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: themeColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: 16, color: themeColor),
              ),
              const Gap(10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: "SatoshiBold",
                  color: Colors.grey[500],
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          const Gap(12),
          Text(
            value ?? 'None',
            style: const TextStyle(
              fontSize: 16,
              fontFamily: "SatoshiBold",
              color: Color(0xFF1F2937),
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
