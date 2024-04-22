import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Color.fromARGB(255, 31, 50, 85), // Adjust color as needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'About Us',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Integer posuere suscipit urna, id consequat nisi eleifend eget. '
              'Cras quis nisi eget arcu dictum ullamcorper. Nulla facilisi. '
              'Nullam et metus a magna porttitor convallis at non urna. '
              'Vivamus vestibulum, ipsum nec suscipit ultricies, augue odio '
              'fermentum ex, eget fermentum urna ipsum ut elit. Aliquam erat '
              'volutpat. Donec rhoncus laoreet tortor, eget bibendum elit.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  // Handle social media click
                },
                icon: Icon(Icons.facebook, color: Colors.white),
              ),
              IconButton(
                onPressed: () {
                  // Handle social media click
                },
                icon: Icon(Icons.youtube_searched_for, color: Colors.white),
              ),
              IconButton(
                onPressed: () {
                  // Handle social media click
                },
                icon: Icon(Icons.notification_add_rounded, color: Colors.white),
              ),
              IconButton(
                onPressed: () {
                  // Handle social media click
                },
                icon: Icon(Icons.mediation_rounded, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
