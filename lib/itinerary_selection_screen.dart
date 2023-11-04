import 'package:flutter/material.dart';
import 'activity_listing_screen.dart';

class Select extends StatefulWidget {
  const Select({super.key});

  @override
  State<Select> createState() => _SelectState();
}

class _SelectState extends State<Select> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Select Itinerary'),
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: buildGridTile("assets/adventure.jpg",
                        "Adventure Enthusiasts", context),
                  ),
                  Expanded(
                    child: buildGridTile(
                        "assets/history.jpg", "History Aficionados", context),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: buildGridTile(
                        "assets/culinary.jpg", "Culinary Seekers", context),
                  ),
                  Expanded(
                    child: buildGridTile(
                        "assets/nightlife.jpg", "Nightlife Revelers", context),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Widget buildGridTile(String imageAsset, String label, context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ActivityListingScreen(category: label),
            )); // Handle tile tap, e.g., navigate to a specific category screen.
      },
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              imageAsset,
              fit: BoxFit.cover,
              height: 250, // Adjust to your preference
            ),
            Center(
              child: Text(label),
            )
          ],
        ),
      ),
    );
  }
}
