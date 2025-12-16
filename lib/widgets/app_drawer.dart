import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF222222),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // Drawer Header
          _buildDrawerHeader(context),

          // Group 1: Account Management
          _buildDrawerItem(
            icon: Icons.person_outline,
            text: 'My Account',
            onTap: () => _navigateTo(context, 'My Account'),
          ),
          _buildDrawerItem(
            icon: Icons.add_circle_outline,
            text: 'Cricster Plus',
            onTap: () => _navigateTo(context, 'Cricster Plus'),
          ),
          const Divider(color: Colors.white24),

          // Group 2: Core Data Exploration
          _buildDrawerItem(
            icon: Icons.emoji_events_outlined,
            text: 'Browse Series',
            onTap: () => _navigateTo(context, 'Browse Series'),
          ),
          _buildDrawerItem(
            icon: Icons.group_outlined,
            text: 'Browse Team',
            onTap: () => _navigateTo(context, 'Browse Team'),
          ),
          _buildDrawerItem(
            icon: Icons.person_search_outlined,
            text: 'Browse Player',
            onTap: () => _navigateTo(context, 'Browse Player'),
          ),
          const Divider(color: Colors.white24),

          // Group 3: Key App Features
          _buildDrawerItem(
            icon: Icons.calendar_today_outlined,
            text: 'Schedule',
            onTap: () => _navigateTo(context, 'Schedule'),
          ),
          _buildDrawerItem(
            icon: Icons.history,
            text: 'Archives',
            onTap: () => _navigateTo(context, 'Archives'),
          ),
          _buildDrawerItem(
            icon: Icons.photo_library_outlined,
            text: 'Photos',
            onTap: () => _navigateTo(context, 'Photos'),
          ),
          const Divider(color: Colors.white24),

          // Group 4: Reference & Statistics
          _buildDrawerItem(
            icon: Icons.trending_up,
            text: 'ICC Rankings - Men',
            onTap: () => _navigateTo(context, 'ICC Rankings - Men'),
          ),
          _buildDrawerItem(
            icon: Icons.trending_up,
            text: 'ICC Rankings - Women',
            onTap: () => _navigateTo(context, 'ICC Rankings - Women'),
          ),
          _buildDrawerItem(
            icon: Icons.bar_chart_outlined,
            text: 'Records',
            onTap: () => _navigateTo(context, 'Records'),
          ),
          const Divider(color: Colors.white24),

          // Group 5: Corporate & Legal
          _buildDrawerItem(
            icon: Icons.work_outline,
            text: 'Careers',
            onTap: () => _navigateTo(context, 'Careers'),
          ),
          _buildDrawerItem(
            icon: Icons.campaign_outlined,
            text: 'Advertise with us',
            onTap: () => _navigateTo(context, 'Advertise'),
          ),
          _buildDrawerItem(
            icon: Icons.info_outline,
            text: 'About Us',
            onTap: () => _navigateTo(context, 'About Us'),
          ),
          _buildDrawerItem(
            icon: Icons.privacy_tip_outlined,
            text: 'Privacy Notice',
            onTap: () => _navigateTo(context, 'Privacy Notice'),
          ),
          _buildDrawerItem(
            icon: Icons.gavel_outlined,
            text: 'Terms of Use',
            onTap: () => _navigateTo(context, 'Terms of Use'),
          ),
        ],
      ),
    );
  }

  // Helper method for the Drawer Header
  Widget _buildDrawerHeader(BuildContext context) {
    return Container(
      height: 100,
      color: Theme.of(context).primaryColor,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.close, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }

  // Helper method for creating consistent ListTiles
  Widget _buildDrawerItem({
    required IconData icon,
    required String text,
    required GestureTapCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.white70),
      title: Text(text, style: const TextStyle(color: Colors.white)),
      onTap: onTap,
    );
  }

  // Navigation logic stub
  void _navigateTo(BuildContext context, String pageName) {
    Navigator.of(context).pop(); // Close the drawer first
    // TODO: Replace with actual navigation to feature pages
    // For now, we can show a snackbar to confirm the tap
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Navigating to $pageName'),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}