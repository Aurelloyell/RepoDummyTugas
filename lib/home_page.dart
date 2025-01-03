import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String tag = 'home-page';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('tempe'); // Replace with your desired route
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF5F5F5),
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(10),
            width: 400,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10,
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Header Row
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 24,
                        backgroundImage: NetworkImage(
                          'https://cdn.discordapp.com/emojis/1108402827400851530.gif?size=48&quality=lossless&name=veiNoted',
                        ),
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
                            'Good Morning',
                            style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Main Image
                  Image.network('https://th.bing.com/th/id/OIP.5WWnmYlSgyMe0dr4DAchJwHaE8?rs=1&pid=ImgDetMain'),
                  const SizedBox(height: 16),
                  // Food Items
                  ..._buildFoodItems(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildFoodItems(BuildContext context) {
    final items = [
    {
        'name': 'French Fries',
        'price': 'Rp25.000',
        'image': 'https://i.imgur.com/bLPIOLb.jpeg',
        'description': 'Crispy and golden French fries, perfect for snacking.'
    },
    {
        'name': 'Chicken',
        'price': 'Rp35.000',
        'image': 'https://i.imgur.com/MexOgu6.jpeg',
        'description': 'Juicy grilled chicken served with a side of sauce.'
    },
    {
        'name': 'French Fries',
        'price': 'Rp25.000',
        'image': 'https://i.imgur.com/bLPIOLb.jpeg',
        'description': 'Crispy and golden French fries, perfect for snacking.'
    },
    {
        'name': 'Espresso long black',
        'price': 'Rp28.000',
        'image': 'https://upload.wikimedia.org/wikipedia/commons/c/c5/Nero_Espresso_long_black_%283168418775%29.jpg',
        'description': 'Strong black espresso, rich in flavor with a smooth finish.'
    },
    {
        'name': 'Espresso',
        'price': 'Rp25.000',
        'image': 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Tazzina_di_caff%C3%A8_a_Ventimiglia.jpg',
        'description': 'A classic, intense shot of black espresso for coffee lovers.'
    },
    {
        'name': 'Café au lait',
        'price': 'Rp30.000',
        'image': 'https://www.acouplecooks.com/wp-content/uploads/2021/08/Cafe-Au-Lait-001.jpg',
        'description': 'A smooth blend of hot coffee and steamed milk, comforting and delicious.'
    },
    {
        'name': 'Ristretto',
        'price': 'Rp27.000',
        'image': 'https://th.bing.com/th/id/OSK.HEROmHNyzXcKhaBWIwt6MCnZVJQKBYXMBUFNwG7W2ywwJfg?rs=1&pid=ImgDetMain',
        'description': 'A short, concentrated espresso shot, bold and full-bodied.'
    },
    {
        'name': 'Galão',
        'price': 'Rp32.000',
        'image': 'https://upload.wikimedia.org/wikipedia/commons/0/06/Gal%C3%A3o.jpg',
        'description': 'A Portuguese coffee with espresso and steamed milk, similar to a latte.'
    },
    {
        'name': 'Latte',
        'price': 'Rp33.000',
        'image': 'https://upload.wikimedia.org/wikipedia/commons/d/d8/Caffe_Latte_at_Pulse_Cafe.jpg',
        'description': 'A smooth blend of espresso and steamed milk, topped with a light foam.'
    },
    {
        'name': 'Flat White',
        'price': 'Rp32.000',
        'image': 'https://img.huffingtonpost.com/asset/648844b92900006200c9911b.jpeg?ops=scalefit_720_noupscale',
        'description': 'A creamy and velvety coffee made with espresso and microfoam milk.'
    },
    {
        'name': 'Caffè americano',
        'price': 'Rp28.000',
        'image': 'https://cdn.buttercms.com/AB7ud4YSE6nmOX0iGlgA',
        'description': 'A simple yet robust coffee made by diluting espresso with hot water.'
    },
    {
        'name': 'Frappé',
        'price': 'Rp35.000',
        'image': 'https://upload.wikimedia.org/wikipedia/commons/7/73/Cafe-frape-glas-holztisch-unscharf.jpg',
        'description': 'A chilled, frothy iced coffee drink, perfect for hot weather.'
    },
    {
        'name': 'Latte macchiato',
        'price': 'Rp34.000',
        'image': 'https://upload.wikimedia.org/wikipedia/commons/6/61/Latte_macchiato_with_coffee_beans.jpg',
        'description': 'Steamed milk with a shot of espresso, creating a beautiful layered drink.'
    },
    {
        'name': 'Cortado',
        'price': 'Rp29.000',
        'image': 'https://upload.wikimedia.org/wikipedia/commons/1/16/Caf%C3%A9Cortado%28Tallat%29.jpg',
        'description': 'A balanced espresso with equal parts steamed milk, smooth and bold.'
    },
    {
        'name': 'Piccolo Latte',
        'price': 'Rp31.000',
        'image': 'https://upload.wikimedia.org/wikipedia/commons/d/d8/Caffe_Latte_at_Pulse_Cafe.jpg',
        'description': 'A mini latte, strong and creamy, perfect for a small coffee break.'
    },
    {
        'name': 'Manila Coffee',
        'price': 'Rp30.000',
        'image': 'https://upload.wikimedia.org/wikipedia/commons/1/13/Moon_Garden_%28Tagaytay%29_Kapeng_Barako.jpg',
        'description': 'A rich and bold coffee, known for its deep flavors from the Philippines.'
    }
      // Add more items as needed...
    ];

    return items
        .map(
          (item) => GestureDetector(
            onTap: () {
              _showPopup(context, item['name']!, item['price']!, item['image']!, item['description']!);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Image.network(item['image']!, width: 48, height: 48),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['name']!,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        item['price']!,
                        style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
        .toList();
  }

  void _showPopup(BuildContext context, String name, String price, String imageUrl, String description) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(name),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(imageUrl, height: 100, width: 100, fit: BoxFit.cover),
                const SizedBox(height: 10),
                Text(description),
                const SizedBox(height:  10),
                Text('Price: $price', style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
