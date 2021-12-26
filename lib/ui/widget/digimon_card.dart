import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/model/digimon.dart';
import 'package:flutter_challenge/ui/pages/digimon_detail.dart';

class CustomDigimonListCard extends StatelessWidget {
  final Digimon digimon;

  const CustomDigimonListCard({Key? key, required this.digimon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DigimonDetail(
                      digimonImage: digimon.img,
                      digimonLevel: digimon.level,
                      digimonName: digimon.name,
                    )));
      },
      child: _Card(digimon),
    );
  }
}

Widget _Card(Digimon digimon) {
  if (digimon.level == "Mega") {
    return Card(
        color: Colors.cyanAccent,
        elevation: 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FadeInImage.assetNetwork(
                placeholder: "assets/images/photoNotLoad.gif",
                image: digimon.img,
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      digimon.name,
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(digimon.level, style: TextStyle(fontSize: 11))
                  ],
                ),
              ),
            )
          ],
        ));
  } else if (digimon.level == "Ultimate") {
    return Card(
        color: Colors.cyanAccent,
        elevation: 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FadeInImage.assetNetwork(
                placeholder: "assets/images/photoNotLoad.gif",
                image: digimon.img,
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      digimon.name,
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(digimon.level, style: TextStyle(fontSize: 11))
                  ],
                ),
              ),
            )
          ],
        ));
  } else if (digimon.level == "Fresh") {
    return Card(
        color: Colors.deepOrangeAccent,
        elevation: 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FadeInImage.assetNetwork(
                placeholder: "assets/images/photoNotLoad.gif",
                image: digimon.img,
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      digimon.name,
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(digimon.level, style: TextStyle(fontSize: 11))
                  ],
                ),
              ),
            )
          ],
        ));
  } else if (digimon.level == "Champion") {
    return Card(
        color: Colors.amberAccent,
        elevation: 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FadeInImage.assetNetwork(
                placeholder: "assets/images/photoNotLoad.gif",
                image: digimon.img,
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      digimon.name,
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(digimon.level, style: TextStyle(fontSize: 11))
                  ],
                ),
              ),
            )
          ],
        ));
  } else if (digimon.level == "Armor") {
    return Card(
        color: Colors.deepPurpleAccent,
        elevation: 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FadeInImage.assetNetwork(
                placeholder: "assets/images/photoNotLoad.gif",
                image: digimon.img,
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      digimon.name,
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(digimon.level, style: TextStyle(fontSize: 11))
                  ],
                ),
              ),
            )
          ],
        ));
  } else if (digimon.level == "Rookie") {
    return Card(
        color: Colors.lightGreenAccent,
        elevation: 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FadeInImage.assetNetwork(
                placeholder: "assets/images/photoNotLoad.gif",
                image: digimon.img,
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      digimon.name,
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(digimon.level, style: TextStyle(fontSize: 11))
                  ],
                ),
              ),
            )
          ],
        ));
  } else if (digimon.level == "Training") {
    return Card(
        color: Colors.tealAccent,
        elevation: 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FadeInImage.assetNetwork(
                placeholder: "assets/images/photoNotLoad.gif",
                image: digimon.img,
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      digimon.name,
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(digimon.level, style: TextStyle(fontSize: 11))
                  ],
                ),
              ),
            )
          ],
        ));
  } else if (digimon.level == "In Training") {
    return Card(
        color: Colors.pinkAccent,
        elevation: 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FadeInImage.assetNetwork(
                placeholder: "assets/images/photoNotLoad.gif",
                image: digimon.img,
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      digimon.name,
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(digimon.level, style: TextStyle(fontSize: 11))
                  ],
                ),
              ),
            )
          ],
        ));
  } else {
    return Container();
  }
}
