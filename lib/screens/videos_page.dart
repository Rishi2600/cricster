import 'package:flutter/material.dart';
import 'package:cricster/widgets/featured_videos.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildVideoCategoryRow(context, 'Match Highlights'),
            const SizedBox(height: 24),
            _buildVideoCategoryRow(context, 'Press Conferences'),
            const SizedBox(height: 24),
            _buildVideoCategoryRow(context, 'Expert Analysis'),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoCategoryRow(BuildContext context, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(title, style: Theme.of(context).textTheme.titleLarge),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            itemCount: 5,
            itemBuilder: (context, index) => const VideoCard(),
          ),
        )
      ],
    );
  }
}