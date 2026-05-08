import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class CreditProfileScreen extends StatelessWidget {
  const CreditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(LucideIcons.chevronLeft, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Profile & Credit',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'SatoshiBold',
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(30),
              const CircleAvatar(
                radius: 60,
                backgroundColor: Color(0xff399494),
                child: Icon(
                  LucideIcons.user,
                  size: 60,
                  color: Colors.white,
                ),
              ),
              const Gap(20),
              const Text(
                'Guest User',
                style: TextStyle(
                  fontFamily: 'SatoshiBold',
                  fontSize: 28,
                ),
              ),
              const Text(
                'AI Assistant & Developer',
                style: TextStyle(
                  fontFamily: 'SatoshiMedium',
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const Gap(40),
              _buildSectionTitle('Project Information'),
              const Gap(15),
              _buildCreditItem(
                'App Name',
                'PokéWiki',
              ),
              _buildCreditItem(
                'Version',
                '1.0.0',
              ),
              const Gap(30),
              _buildSectionTitle('Credits & Assets'),
              const Gap(15),
              _buildCreditItem(
                'Project Manager & Developer',
                'App by Ringga',
              ),
              _buildCreditItem(
                'Assets',
                'Pokemon official assets',
              ),
              _buildCreditItem(
                'Icons',
                'Lucide Icons',
              ),
              const Gap(30),
              _buildSectionTitle('About'),
              const Gap(15),
              const Text(
                'This application is a comprehensive Pokémon Wiki designed to help trainers explore and understand the vast world of Pokémon.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SatoshiMedium',
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
              const Gap(50),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: 'SatoshiBold',
          fontSize: 20,
          color: Color(0xff399494),
        ),
      ),
    );
  }

  Widget _buildCreditItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'SatoshiMedium',
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontFamily: 'SatoshiBold',
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
