import 'package:flutter/material.dart';

class AdBanner extends StatelessWidget {
  const AdBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              // Placeholder for an ad image
              Container(
                width: 100,
                height: 60,
                color: Colors.blueGrey,
                child: const Center(child: Text('Ad Image')),
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Text(
                  'Engaging Ad Copy Goes Here!',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[700],
                ),
                child: const Text('Learn More'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}