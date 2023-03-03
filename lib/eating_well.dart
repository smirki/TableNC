import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String _currentFilter = "All";

  List<CardData> _data = [
    CardData(
      image: "assets/images/card1.jpg",
      title: "Card 1",
      subtitle: "This is the first card",
      category: "Articles and Podcast",
    ),
    CardData(
      image: "assets/images/card2.jpg",
      title: "Card 2",
      subtitle: "This is the second card",
      category: "Visual Guides",
    ),
    CardData(
      image: "assets/images/card3.jpg",
      title: "Card 3",
      subtitle: "This is the third card",
      category: "Healthy Projects",
    ),
    CardData(
      image: "assets/images/card4.jpg",
      title: "Card 4",
      subtitle: "This is the fourth card",
      category: "Articles and Podcast",
    ),
    CardData(
      image: "assets/images/card5.jpg",
      title: "Card 5",
      subtitle: "This is the fifth card",
      category: "Visual Guides",
    ),
    CardData(
      image: "assets/images/card6.jpg",
      title: "Card 6",
      subtitle: "This is the sixth card",
      category: "Healthy Projects",
    ),
    CardData(
      image: "assets/images/card7.jpg",
      title: "Card 7",
      subtitle: "This is the seventh card",
      category: "Articles and Podcast",
    ),
    CardData(
      image: "assets/images/card8.jpg",
      title: "Card 8",
      subtitle: "This is the eighth card",
      category: "Visual Guides",
    ),
  ];

  List<CardData> _filteredData = [];

  @override
  void initState() {
    super.initState();
    _filteredData = List.from(_data);
  }

  void _filterData(String filter) {
    setState(() {
      _currentFilter = filter;
      if (filter == "All") {
        _filteredData = List.from(_data);
      } else {
        _filteredData = _data.where((card) => card.category == filter).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "EATING WELL",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Roboto Thin',
          ),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color(0xFFF5EEDF),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Eating Well",
              style: TextStyle(
                fontFamily: 'Roboto Thin',
                color: Color(0xFF363636),
                fontSize: 32.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Food info from nutritionists, plus how to get food where you live.",
              style: TextStyle(
                fontFamily: 'Roboto Thin',
                color: Color(0xFF363636),
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildFilterButton("All"),
                buildFilterButton("Articles and Podcast"),
                buildFilterButton("Visual Guides"),
                buildFilterButton("Healthy Projects"),
              ],
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredData.length,
                itemBuilder: (BuildContext context, int index) {
                  return buildCard(_filteredData[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFilterButton(String filter) {
    return ElevatedButton(
      onPressed: () => _filterData(filter),
      child: Text(
        filter,
        style: TextStyle(
          color: _currentFilter == filter ? Colors.white : Colors.black,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: _currentFilter == filter ? Color(0xFF363636) : Colors.white,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
    );
  }

  Widget buildCard(CardData data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                data.image,
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
                    data.title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    data.subtitle,
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

class CardData {
  final String image;
  final String title;
  final String subtitle;
  final String category;

  CardData({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.category,
  });
}
