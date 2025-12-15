import 'package:flutter/material.dart';

class ScorecardTicker extends StatelessWidget {
  const ScorecardTicker({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        itemCount: 5, // Placeholder count
        itemBuilder: (context, index) {
          return const MatchScorecard();
        },
      ),
    );
  }
}

class MatchScorecard extends StatelessWidget {
  const MatchScorecard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Match info
              Row(
                children: [
                  Text(
                    '2nd T20I • South Africa tour of India',
                    style: Theme.of(context).textTheme.bodySmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white30),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text('T20I', style: TextStyle(fontSize: 10)),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // Team Scores
              _buildTeamRow(context, '🇿🇦', 'RSA', '213-4 (20)'),
              const SizedBox(height: 6),
              _buildTeamRow(context, '🇮🇳', 'IND', '162 (19.1)'),
              const Spacer(),
              // Match Result
              Text(
                'South Africa won by 51 runs',
                style: TextStyle(color: Colors.blue[300], fontWeight: FontWeight.w500),
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: Text('SCHEDULE', style: TextStyle(fontSize: 12, color: Colors.white70)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTeamRow(BuildContext context, String flag, String team, String score) {
    return Row(
      children: [
        Text(flag, style: const TextStyle(fontSize: 20)),
        const SizedBox(width: 8),
        Text(team, style: Theme.of(context).textTheme.titleMedium),
        const Spacer(),
        Text(score, style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }
}