import 'package:flutter/material.dart';

class MatchesPage extends StatelessWidget {
  const MatchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            indicatorColor: Theme.of(context).primaryColor,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: const [
              Tab(text: 'LIVE'),
              Tab(text: 'UPCOMING'),
              Tab(text: 'RECENT'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                _buildMatchesList(MatchStatus.live),
                _buildMatchesList(MatchStatus.upcoming),
                _buildMatchesList(MatchStatus.recent),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMatchesList(MatchStatus status) {
    return ListView.builder(
      itemCount: 10, // Placeholder
      itemBuilder: (context, index) {
        return MatchListItemCard(status: status);
      },
    );
  }
}

enum MatchStatus { live, upcoming, recent }

// NOTE: For a larger project, this card would be in its own file
// in the 'widgets' directory.
class MatchListItemCard extends StatelessWidget {
  final MatchStatus status;

  const MatchListItemCard({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Indian Premier League, Match ${_getMatchNumber()}',
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
            const SizedBox(height: 12),
            _buildTeamRow('🇮🇳', 'Royal Challengers'),
            const SizedBox(height: 8),
            _buildTeamRow('🇮🇳', 'Mumbai Indians'),
            const SizedBox(height: 12),
            _buildStatusFooter(context),
          ],
        ),
      ),
    );
  }

  // Placeholder data generators
  String _getMatchNumber() => (DateTime.now().millisecond % 50 + 1).toString();

  Widget _buildTeamRow(String flag, String name) {
    return Row(
      children: [
        Text(flag, style: const TextStyle(fontSize: 20)),
        const SizedBox(width: 10),
        Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
      ],
    );
  }

  Widget _buildStatusFooter(BuildContext context) {
    switch (status) {
      case MatchStatus.live:
        return Text('RCB 120/3 (15.2)', style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold));
      case MatchStatus.upcoming:
        return const Text('Starts in 3h 15m', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold));
      case MatchStatus.recent:
        return Text('Mumbai Indians won by 7 wickets', style: TextStyle(color: Colors.blue[300]));
    }
  }
}