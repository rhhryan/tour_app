import 'package:flutter/material.dart';

class ActivityListingScreen extends StatelessWidget {
  final String category; // Pass the selected category as a parameter

  ActivityListingScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    switch (category) {
      case 'Adventure Enthusiasts':
        return Scaffold(
          appBar: AppBar(
            title: Text(category), // Set the category as the app bar title
          ),
          body: ListView(
            children: <Widget>[
              buildActivityCard(
                'Kayak Tour',
                'Canal tours through Amsterdam are one of the most popular tourist activities, but you can also discover the famed World Heritage Site by kayak. There are a few guided kayak tours available in the city, but you can also rent a kayak to create your own exploration.',
                'assets/kayak.jpg', // Replace with the image asset path
              ),
              buildActivityCard(
                'Ice Skating',
                'The Dutch don’t depend on the sun for outdoor adventures; they take advantage of any and all weather. One of the country’s most popular winter activities is ice skating ',
                'assets/ice-skating.jpg', // Replace with the image asset path
              ),
              buildActivityCard(
                'Picnic',
                'When the sun is shining, hitting one of the Amsterdam Area’s many beautiful parks for a picnic is one of the locals’ favourite things to do. ',
                'assets/picnic.jpg', // Replace with the image asset path
              ),
              // Add more activity cards here
            ],
          ),
        );
      case 'History Aficionados':
        return Scaffold(
          appBar: AppBar(
            title: Text(category), // Set the category as the app bar title
          ),
          body: ListView(
            children: <Widget>[
              buildActivityCard(
                'Beurs van Berlage',
                'Beurs van Berlage is the third stock exchange building of Amsterdam and it hosted, among others,  the marriage of King Willem-Alexander and Queen Maxima.',
                'assets/Beurs-van-Berlage.jpg', // Replace with the image asset path
              ),
              buildActivityCard(
                'Dam Square',
                'Dam Square is the place where Amsterdam started, with the building of a dam in the river Amstel. It is nowadays the beating heart of the city, the place to feel the rhythm of Amsterdam and do some people watching at the same time. ',
                'assets/Dam-square.jpg', // Replace with the image asset path
              ),
              buildActivityCard(
                'Centraal Station',
                'Almost every visit to Amsterdam starts at Centraal Station (Central Station). One of the Netherland’s main transportation hubs, the Central Station was built between 1881 and 1889 on three artificial small islands on the IJ, supported by 8067 wooden pillars sunk into the sandy soil. ',
                'assets/Centraal-Station.jpg', // Replace with the image asset path
              ),
              // Add more activity cards here
            ],
          ),
        );
      case 'Culinary Seekers':
        return Scaffold(
          appBar: AppBar(
            title: Text(category), // Set the category as the app bar title
          ),
          body: ListView(
            children: <Widget>[
              buildActivityCard(
                'Stroopwafels',
                'Two thin waffles stuck together with a layer of sweet syrup; these delectable delicacies are best enjoyed hot and gooey from a street market or bakery.',
                'assets/Stroopwafels.jpg', // Replace with the image asset path
              ),
              buildActivityCard(
                'Dutch Pancakes',
                'Unlike the thick and fluffy American variety, Dutch pancakes have a thinner, crepe-like consistency with more surface area for delicious toppings.',
                'assets/Dutch-pancakes.jpg', // Replace with the image asset path
              ),
              buildActivityCard(
                'Oliebollen',
                'Essentially they are deep fried sweet dumplings(sometimes containing fruit pieces) and dusted in powdered sugar, and they’re so delicious that they only come out around New Year’s Eve, just before the January diet kicks in.',
                'assets/Oliebollen.jpg', // Replace with the image asset path
              ),
              // Add more activity cards here
            ],
          ),
        );
      case 'Nightlife Revelers':
        return Scaffold(
          appBar: AppBar(
            title: Text(category), // Set the category as the app bar title
          ),
          body: ListView(
            children: <Widget>[
              buildActivityCard(
                'Beer Temple',
                "Famous for its reasonable selection of American-style beers, the Beer Temple is a welcoming bar set in the city center of Amsterdam. It is one of the first American bars in Europe that serves around 50 draft beers and has nearly 200 bottled or canned beers.",
                'assets/Beer-Temple.jpg', // Replace with the image asset path
              ),
              buildActivityCard(
                'Club Escape',
                "Club Escape is a spirited weekend nightclub that is one of the city's biggest and most renowned dance clubs, featuring a splendid dance floor, DJs, and a full bar with a VIP area.",
                'assets/club-escape.jpeg', // Replace with the image asset path
              ),
              buildActivityCard(
                'Waterhole',
                'Another popular Amsterdam nightlife venue is Waterhole, which is in the city center. It is a live music bar offering a diverse music selection, including everything from pop to rock.',
                'assets/waterhole.jpg', // Replace with the image asset path
              ),
              // Add more activity cards here
            ],
          ),
        );
      default:
        break;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(category), // Set the category as the app bar title
      ),
      body: ListView(
        children: <Widget>[
          buildActivityCard(
            'Activity 1',
            'Description for Activity 1',
            'assets/adventure.jpg', // Replace with the image asset path
          ),
          buildActivityCard(
            'Activity 2',
            'Description for Activity 2',
            'assets/history.jpg', // Replace with the image asset path
          ),
          buildActivityCard(
            'Activity 2',
            'Description for Activity 2',
            'assets/history.jpg', // Replace with the image asset path
          ),
          // Add more activity cards here
        ],
      ),
    );
  }

  Widget buildActivityCard(
      String title, String description, String imageAsset) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            imageAsset,
            fit: BoxFit.cover,
            height: 200, // Adjust to your preference
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  description,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
