import 'package:flutter/material.dart';

class QuickLinks extends StatelessWidget {
  const QuickLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildLinkChip(icon: Icons.gavel, label: 'WPL Auction 2026'),
          _buildLinkChip(icon: Icons.shield, label: 'Go ad-free'),
          _buildLinkChip(icon: Icons.emoji_events_outlined, label: 'Browse Series'),
        ],
      ),
    );
  }

  Widget _buildLinkChip({required IconData icon, required String label}) {
    return Chip(
      avatar: Icon(icon, size: 18, color: Colors.white70),
      label: Text(label),
      backgroundColor: Colors.grey.withOpacity(0.2),
      side: BorderSide.none,
    );
  }
}