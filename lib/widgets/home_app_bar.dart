import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          // TODO: Implement drawer functionality
        },
      ),
      title: Text(
        'cricster', // Using Text to simulate the logo for now
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Theme.of(context).primaryColor,
        ),
      ),
      centerTitle: true,
      actions: [
        TextButton(
          onPressed: () {
            // TODO: Implement login navigation
          },
          child: const Text(
            'Log In',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}