import 'package:flutter/material.dart';

class about_us extends StatelessWidget {
  const about_us({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Color.fromARGB(255, 31, 50, 85), // Adjust color as needed
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Us',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Integer posuere suscipit urna, id consequat nisi eleifend eget. '
            'Cras quis nisi eget arcu dictum ullamcorper. Nulla facilisi. '
            'Nullam et metus a magna porttitor convallis at non urna. '
            'Vivamus vestibulum, ipsum nec suscipit ultricies, augue odio '
            'fermentum ex, eget fermentum urna ipsum ut elit. Aliquam erat '
            'volutpat. Donec rhoncus laoreet tortor, eget bibendum elit.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
