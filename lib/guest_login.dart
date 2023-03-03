import 'package:flutter/material.dart';
import 'eating_well.dart';

class GuestSignInPage extends StatelessWidget {
  const GuestSignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Guest Sign In',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 100.0),
                Text(
                  'Welcome, Guest!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen()),
                        );
                      },
                      child: Container(
                        child: buildCard(
                          image: '',
                          title: "EATING WELL",
                          subtitle:
                              'Food info from nutrionists, plus how to get food where you live',
                        ),
                        // Card content goes here
                      ),
                    ),
                    buildCard(
                      image: '',
                      title: 'HEALTH AND WELLNESS',
                      subtitle: 'This is the second card',
                    ),
                    buildCard(
                      image: '',
                      title: 'Card 3',
                      subtitle: 'This is the third card',
                    ),
                    buildCard(
                      image: '',
                      title: 'Card 4',
                      subtitle: 'This is the fourth card',
                    ),
                    buildCard(
                      image: '',
                      title: 'Card 5',
                      subtitle: 'This is the fifth card',
                    ),
                    buildCard(
                      image: '',
                      title: 'Card 6',
                      subtitle: 'This is the sixth card',
                    ),
                    buildCard(
                      image: '',
                      title: 'Card 7',
                      subtitle: 'This is the seventh card',
                    ),
                    buildCard(
                      image: '',
                      title: 'Card 8',
                      subtitle: 'This is the eighth card',
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              // Home item tapped
              break;
            case 1:
              // Favorites item tapped
              break;
            case 2:
              // Search item tapped
              break;
            case 3:
              // Menu item tapped
              break;
            default:
              break;
          }
        },
      ),
    );
  }

  Widget buildCard({
    required String image,
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: 200.0,
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
