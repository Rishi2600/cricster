import 'package:flutter/material.dart';

class SeriesPage extends StatelessWidget {
  const SeriesPage({super.key});

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
              Tab(text: 'CURRENT'),
              Tab(text: 'UPCOMING'),
              Tab(text: 'ARCHIVED'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                _buildSeriesList(),
                _buildSeriesList(),
                _buildSeriesList(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSeriesList() {
    return ListView.builder(
      itemCount: 8, // Placeholder
      itemBuilder: (context, index) => const SeriesSummaryCard(),
    );
  }
}

// NOTE: For a larger project, this would be in its own file.
class SeriesSummaryCard extends StatelessWidget {
  const SeriesSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ICC Men's T20 World Cup 2024",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 4),
            const Text(
              'June 2024 - July 2024',
              style: TextStyle(color: Colors.white70, fontSize: 12),
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                Text('🇦🇺'), SizedBox(width: 8),
                Text('🇮🇳'), SizedBox(width: 8),
                Text('🏴󠁧󠁢󠁥󠁮󠁧󠁿'), SizedBox(width: 8),
                Text('🇵🇰'), SizedBox(width: 8),
                Text('🇿🇦'), SizedBox(width: 8),
                Text('...'),
              ],
            )
          ],
        ),
      ),
    );
  }
}