import 'package:flutter/material.dart';

class FeaturedVideos extends StatelessWidget {
  const FeaturedVideos({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Featured Videos', style: Theme.of(context).textTheme.titleLarge),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View All',
                  style: TextStyle(color: Colors.blue[300], fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          // Video List
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => const VideoCard(),
            ),
          )
        ],
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  const VideoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 140,
                  color: Colors.teal, // Placeholder for image
                  child: const Center(child: Text('Video Thumbnail')),
                ),
              ),
              Icon(
                Icons.play_circle_fill,
                color: Colors.white.withOpacity(0.8),
                size: 50,
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Cricster Live: Post Match Show Analysis and Highlights',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}