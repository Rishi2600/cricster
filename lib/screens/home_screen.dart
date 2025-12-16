import 'package:flutter/material.dart';
import 'package:cricster/widgets/ad_banner.dart';
import 'package:cricster/widgets/featured_videos.dart';
import 'package:cricster/widgets/home_app_bar.dart';
import 'package:cricster/widgets/quick_links.dart';
import 'package:cricster/widgets/scorecard_ticker.dart';
import 'package:cricster/screens/matches_page.dart';
import 'package:cricster/screens/series_page.dart';
import 'package:cricster/screens/videos_page.dart';
import 'package:cricster/screens/news_page.dart';
import 'package:cricster/widgets/app_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

//we made this widget stateful because we need to keep the bottom Navbar state persistent.

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // BottomNavigationBar widgets
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeContent(),
    const MatchesPage(),
    const SeriesPage(),
    const VideosPage(),
    const NewsPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      drawer: const AppDrawer(),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.sports_cricket), label: 'Matches'),
          BottomNavigationBarItem(icon: Icon(Icons.emoji_events), label: 'Series'),
          BottomNavigationBarItem(icon: Icon(Icons.videocam), label: 'Videos'),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: 'News'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

// This widget contains the scrollable content for the home tab
class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          const ScorecardTicker(),
          const QuickLinks(),
          const AdBanner(),
          const FeaturedVideos(),
          const SizedBox(height: 20), // Some padding at the bottom
        ],
      ),
    );
  }
}