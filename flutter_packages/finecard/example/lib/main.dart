import 'package:finecard/finecard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Example(),
    );
  }
}

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children: [
          // ignore: prefer_const_constructors
          FineCard(
            elevation: 0,
            background: Colors.blue,
            cardIcon: CardIcon(icon: Icons.person, color: Colors.white),
          ),                          FineCard(
            elevation: 0,
            background: Colors.green,
            cardIcon: CardIcon(icon: Icons.remove_red_eye, color: Colors.black, size:20),
            insideCard: InsideCard(
              elevation: 0,
              background: Colors.green.shade300,
            ),
          ),                          FineCard(
            cardIcon: CardIcon(
              icon: Icons.delete,
              color: Colors.red,
            ),
          ),                          FineCard(
            cardIcon: CardIcon(
                icon: Icons.recycling, color: Colors.white, size: 20),
            insideCard: InsideCard(
              elevation: 0,
              background: Colors.purple,
            ),
          ),                          FineCard(
            cardIcon: CardIcon(
                icon: Icons.remove_red_eye, color: Colors.black, size: 20),
            insideCard: InsideCard(),
          ),                          FineCard(
            elevation: 0,
            cardImage: CardImage(
                imageType: ImageType.networkImage,
                image:
                "https://vizagvolunteers.org/frontend/images/profiles/varaprasad.jpg",
                width: double.infinity,
                height: 88),
          ),                          FineCard(
            elevation: 0,
            background: Colors.orange,
            cardImage: CardImage(
                imageType: ImageType.networkImage,
                image:
                "https://vizagvolunteers.org/frontend/images/profiles/prasana.jpg",
                width: 50,
                height: 50),
          ),                          FineCard(
            elevation: 0,
            background: Colors.pink,
            insideCard: InsideCard(
              elevation: 0,
              background: Colors.pink.shade900,
            ),
            cardImage: CardImage(
              imageType: ImageType.networkImage,
              image:
              "https://vizagvolunteers.org/frontend/images/profiles/chandan.jpg",
              padding: 7,
            ),
          ),                          FineCard(
            cardImage: CardImage(
                imageType: ImageType.networkImage,
                image:
                "https://vizagvolunteers.org/frontend/images/profiles/namisha.jpg",
                width: double.infinity,
                height: 88),
          ),                          FineCard(
            cardImage: CardImage(
                imageType: ImageType.networkImage,
                image:
                "https://vizagvolunteers.org/frontend/images/profiles/satish.jpg",
                width: 50,
                height: 50),
          ),                          FineCard(
            background: Colors.brown,
            insideCard: InsideCard(
            ),
            cardImage: CardImage(
              imageType: ImageType.networkImage,
              image:
              "https://vizagvolunteers.org/frontend/images/profiles/sudarshan.jpg",
            ),
          ),                          FineCard(
            background: Colors.deepPurple,
            insideCard: InsideCard(
              background: Colors.yellow.shade900,
            ),
            cardImage: CardImage(
              imageType: ImageType.networkImage,
              image:
              "https://vizagvolunteers.org/frontend/images/profiles/pushphit.jpg",
              padding: 7,
            ),
          ),

          FineCard(
            cardTitle: CardTitle(display: 'outside', name: "Title Here"),
            elevation: 0,
            background: Colors.red,
            cardIcon:
            CardIcon(icon: Icons.mobile_friendly, color: Colors.white),
          ),                          FineCard(
            cardTitle: CardTitle(display: 'outside', name: "Title Here",),
            elevation: 0,
            background: Colors.brown,
            cardIcon: CardIcon(
                icon: Icons.radio, color: Colors.white, size: 20),
            insideCard: InsideCard(
              elevation: 0,
              background: Colors.brown.shade900,
            ),
          ),                          FineCard(
            cardTitle: CardTitle(display: 'outside', name: "Title Here"),
            cardIcon: CardIcon(
              icon: Icons.supervisor_account_sharp,
              size:46,
              color: Colors.green.shade900,
            ),
          ),                          FineCard(
            cardTitle: CardTitle(display: 'outside', name: "Title Here"),
            cardIcon: CardIcon(
                icon: Icons.edit, color:Colors.black, size: 20),
            insideCard: InsideCard(
              elevation: 0,
              background: Colors.yellow,
            ),
          ),                          FineCard(
            cardTitle:CardTitle(display:'outside', name: "Title Here"),
            cardIcon: CardIcon(
                icon: Icons.handshake, color: Colors.green, size: 30),
            insideCard: InsideCard(),
          ),                          FineCard(
            cardTitle:CardTitle(display:'outside', name: "Title Here"),
            elevation: 0,
            cardImage: CardImage(
                imageType: ImageType.networkImage,
                image:
                "https://vizagvolunteers.org/frontend/images/profiles/ruchitha.jpg",
                width: double.infinity,
                height: 88),
          ),                          FineCard(
            cardTitle:CardTitle(display:'outside', name: "Title Here"),
            elevation: 0,
            background: Colors.blue,
            cardImage: CardImage(
                imageType: ImageType.networkImage,
                image:
                "https://vizagvolunteers.org/frontend/images/profiles/jagadesh.jpg",
                width: 50,
                height: 50),
          ),                          FineCard(
            cardTitle:CardTitle(display:'outside', name: "Title Here"),
            elevation: 0,
            background: Colors.purple,
            insideCard: InsideCard(
              elevation: 0,
              background: Colors.white,
            ),
            cardImage: CardImage(
              imageType: ImageType.networkImage,
              image:
              "https://vizagvolunteers.org/frontend/images/profiles/barghav.jpg",
              padding: 7,
            ),
          ),                          FineCard(
            cardTitle:CardTitle(display:'outside', name: "Title Here"),
            cardImage: CardImage(
                imageType: ImageType.networkImage,
                image:
                "https://vizagvolunteers.org/frontend/images/profiles/madhuri.jpg",
                width: double.infinity,
                height: 88),
          ),                          FineCard(
            cardTitle:CardTitle(display:'outside', name: "Title Here"),
            cardImage: CardImage(
                imageType: ImageType.networkImage,
                image:
                "https://vizagvolunteers.org/frontend/images/profiles/vivek.jpg",
                width: 50,
                height: 50),
          ),                          FineCard(
            cardTitle:CardTitle(display:'outside', name: "Title Here"),
            background: Colors.black,
            insideCard: InsideCard(
            ),
            cardImage: CardImage(
              imageType: ImageType.networkImage,
              image:
              "https://vizagvolunteers.org/frontend/images/profiles/tanuja.jpg",
            ),
          ),                          FineCard(
            cardTitle:CardTitle(display:'outside', name: "Title Here"),
            background: Colors.green,
            insideCard: InsideCard(
            ),
            cardImage: CardImage(
              imageType: ImageType.networkImage,
              image:
              "https://vizagvolunteers.org/frontend/images/profiles/ramya.jpg",
              padding: 7,
            ),
          ),                          FineCard(
            cardTitle: CardTitle(
                display: 'inside',
                name: "Title Here",
                fontSize: 14,
                color: Colors.black),
            elevation: 0,
            background: Colors.yellow,
            cardIcon:
            CardIcon(icon: Icons.dangerous, color: Colors.black, ),
          ),                          FineCard(
            cardTitle: CardTitle(
                display: 'inside',
                name: "Title Here",
                fontSize: 14,
                color: Colors.white),
            elevation: 0,
            background: Colors.deepPurple,
            cardIcon: CardIcon(
                icon: Icons.sync, color: Colors.white, size: 20),
            insideCard: InsideCard(
              width: 30,
              height: 30,
              elevation: 0,
              background: Colors.red,
            ),
          ),                          FineCard(
            cardTitle: CardTitle(display: 'inside', name: "Title Here", fontSize:14, ),
            cardIcon: CardIcon(
              icon: Icons.favorite,
              color: Colors.black87,
            ),
          ),                          FineCard(
            cardTitle: CardTitle(display: 'inside', name: "Title Here", fontSize:14, ),
            cardIcon: CardIcon(
                icon: Icons.menu, color: Colors.white, size: 20),
            insideCard: InsideCard(
              width:40, height:40,
              elevation: 0,
              background: Colors.green.shade900,
            ),
          ),                          FineCard(
            cardTitle: CardTitle(display: 'inside', name: "Title Here", fontSize:14, ),
            cardIcon: CardIcon(
                icon: Icons.fiber_manual_record_rounded, color: Colors.yellow.shade900, size: 20),
            insideCard: InsideCard(width:35, height:35),
          ),                          FineCard(
            cardTitle: CardTitle(display: 'inside', name: "Title Here", fontSize:14, color:Colors.white ),
            elevation: 0,
            background: Colors.blue,
            cardImage: CardImage(
                imageType: ImageType.networkImage,
                image:
                "https://vizagvolunteers.org/frontend/images/profiles/praveen.jpg",
                width: 40,
                height: 40),
          ),                          FineCard(
            cardTitle: CardTitle(display: 'inside', name: "Title Here", fontSize:14, color:Colors.white ),
            elevation: 0,
            background: Colors.red,
            insideCard: InsideCard(
              elevation: 0,
              background: Colors.green,
              width:38, height:38,
            ),
            cardImage: CardImage(
              imageType: ImageType.networkImage,
              image:
              "https://vizagvolunteers.org/frontend/images/profiles/karithika.jpg",
              padding: 5,
            ),
          ),                          FineCard(
            cardTitle: CardTitle(display: 'inside', name: "Title Here", fontSize:14,  ),
            cardImage: CardImage(
                imageType: ImageType.networkImage,
                image:
                "https://vizagvolunteers.org/frontend/images/profiles/sandhya.jpg",
                width: 40,
                height: 40),
          ),                          FineCard(
            cardTitle: CardTitle(display: 'inside', name: "Title Here", fontSize:14, color:Colors.white ),
            background: Colors.red,
            insideCard: InsideCard( width:40, height:40),
            cardImage: CardImage(
              imageType: ImageType.networkImage,
              image:
              "https://vizagvolunteers.org/frontend/images/profiles/noimage.jpg",
            ),
          ),                          FineCard(
            cardTitle: CardTitle(
                display: 'inside',
                name: "Title Here",
                fontSize: 14,
                color: Colors.black),
            background: Colors.yellow,
            insideCard: InsideCard(width: 40, height: 40),
            cardImage: CardImage(
              imageType: ImageType.networkImage,
              image:
              "https://vizagvolunteers.org/frontend/images/profiles/mnagaraju.jpg",
              padding: 5,
            ),
          ),






        ],
      ),
    );
  }
}
