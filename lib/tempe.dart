import 'package:flutter/material.dart';

class Tempe extends StatelessWidget {
  static String tag = 'tempe'; // Corrected route name to match the one in main.dart kalau mau memanggil route ini pakai tag ini

  const Tempe({super.key}); // Corrected constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tempe'), // Changed to an appropriate title
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('home-page'); // Corrected route name
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(10),
            width: 400,
            height: 800,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300] ?? Colors.grey,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 24,
                        backgroundImage: NetworkImage('https://cdn.discordapp.com/emojis/1108402827400851530.gif?size=48&quality=lossless&name=veiNoted'),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hallo, Chip V',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Good Morning', // Changed to English for consistency
                            style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Image.network(
                    'https://cdn.discordapp.com/emojis/1108402827400851530.gif?size=48&quality=lossless&name=veiNoted',
                    height: 100, // Adjusted height for better layout
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}