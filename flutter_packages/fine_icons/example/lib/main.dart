// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fine_icons/fine_icons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fine Icons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'images/logo.png',
              ),
            ),
            leadingWidth: 80,
            toolbarHeight: 80,
            title: Text("Fine Icons")),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Instagram",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0d3f9a),
                      ),
                    ),
                    SizedBox(height: 16),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InstaCard(
                            imgUrl: 'https://www.f9tech.com/images/flutter.jpg',
                            title: 'Your Story',
                          ),
                          SizedBox(width: 16),
                          InstaCard(
                              imgUrl:
                                  'https://www.f9tech.com/images/flutter.jpg',
                              title: 'Vara Prasad',
                              live: "Live"),
                          SizedBox(width: 16),
                          InstaCard(
                            imgUrl: 'https://www.f9tech.com/images/flutter.jpg',
                            title: 'Sudharshan',
                          ),
                          SizedBox(width: 16),
                          InstaCard(
                            imgUrl: 'https://www.f9tech.com/images/flutter.jpg',
                            title: 'Prasana',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Add Itenerary",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0d3f9a),
                      ),
                    ),
                    SizedBox(height: 16),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FineIcons(
                            allSideRadius: 15,
                            cardIcon: CardIcon(
                              icon: Icons.add_ic_call,
                              color: Colors.black,
                              size: 30,
                            ),
                            cardTitle: CardTitle(
                              display: 'outside',
                              name: "Add Call",
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(width: 16),
                          FineIcons(
                            background: Colors.red,
                            allSideRadius: 15,
                            cardIcon: CardIcon(
                              icon: Icons.favorite,
                              color: Colors.white,
                              size: 30,
                            ),
                            cardTitle: CardTitle(
                                display: 'outside',
                                name: "Add Favorite",
                                fontSize: 14,
                                color: Colors.red),
                          ),
                          SizedBox(width: 16),
                          FineIcons(
                            allSideRadius: 15,
                            cardIcon: CardIcon(
                              icon: Icons.add_a_photo,
                              color: Colors.black,
                              size: 30,
                            ),
                            cardTitle: CardTitle(
                              display: 'outside',
                              name: "Add A Photo",
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(width: 16),
                          FineIcons(
                            allSideRadius: 15,
                            cardIcon: CardIcon(
                              icon: Icons.add_location_alt_rounded,
                              color: Colors.black,
                              size: 40,
                            ),
                            cardTitle: CardTitle(
                              display: 'outside',
                              name: "Add Location",
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Donations",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0d3f9a),
                      ),
                    ),
                    SizedBox(height: 16),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FineIcons(
                            elevation: 0,
                            width: 100,
                            minHeight: 100,
                            allSideRadius: 15,
                            background: Colors.deepPurple,
                            insideCard: InsideCard(
                              elevation: 2,
                              width: 40,
                              height: 40,
                              individualSideRadius: IndividualRadius(
                                  topRight: 15, bottomLeft: 15),
                            ),
                            cardIcon: CardIcon(
                                icon: Icons.attach_money_rounded,
                                color: Colors.black,
                                size: 30),
                            cardTitle: CardTitle(
                              display: 'inside',
                              name: "Money",
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 8),
                          FineIcons(
                            elevation: 0,
                            width: 100,
                            minHeight: 100,
                            allSideRadius: 15,
                            background: Colors.deepOrange,
                            insideCard: InsideCard(
                              elevation: 2,
                              width: 40,
                              height: 40,
                              individualSideRadius: IndividualRadius(
                                  topRight: 15, bottomLeft: 15),
                            ),
                            cardIcon: CardIcon(
                                icon: Icons.attachment_outlined,
                                color: Colors.black,
                                size: 30),
                            cardTitle: CardTitle(
                              display: 'inside',
                              name: "Material",
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 8),
                          FineIcons(
                            elevation: 0,
                            width: 100,
                            minHeight: 100,
                            allSideRadius: 15,
                            background: Colors.blue,
                            insideCard: InsideCard(
                              elevation: 2,
                              width: 40,
                              height: 40,
                              individualSideRadius: IndividualRadius(
                                  topRight: 15, bottomLeft: 15),
                            ),
                            cardIcon: CardIcon(
                                icon: Icons.supervisor_account,
                                color: Colors.black,
                                size: 30),
                            cardTitle: CardTitle(
                              display: 'inside',
                              name: "Man Hours",
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}

class InstaCard extends StatelessWidget {
  const InstaCard({
    Key? key,
    required this.imgUrl,
    required this.title,
    this.live,
  }) : super(key: key);

  final String imgUrl;
  final String title;
  final String? live;

  @override
  Widget build(BuildContext context) {
    if (live != null) {
      return Stack(
        children: [
          fineCardIcons(),
          Positioned(
            left: 20,
            top: 70,
            child: FineIcons(
              width: 50,
              minHeight: 20,
              elevation: 0,
              allSideRadius: 15,
              background: Colors.red,
              cardTitle: CardTitle(
                  display: 'inside',
                  name: live,
                  fontSize: 10,
                  color: Colors.white),
            ),
          ),
        ],
      );
    } else {
      return fineCardIcons();
    }
  }

  FineIcons fineCardIcons() {
    return FineIcons(
      elevation: 12,
      background: Colors.white,
      cardImage: CardImage(
          imageType: ImageType.networkImage,
          image: imgUrl,
          borderRadius: 100,
          width: 78,
          height: 78),
      borderWidth: 1,
      borderColor: Color(0xffde0943),
      allSideRadius: 100,
      cardTitle:
          CardTitle(display: 'outside', name: title, outsideTitleMaxWidth: 100),
    );
  }
}
