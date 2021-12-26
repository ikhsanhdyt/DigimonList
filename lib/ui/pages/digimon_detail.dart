import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/helpers/theme.dart';
import 'package:flutter_challenge/model/digimon.dart';

class DigimonDetail extends StatelessWidget {
  final String digimonImage;
  final String digimonName;
  final String digimonLevel;

  const DigimonDetail(
      {Key? key,
      required this.digimonImage,
      required this.digimonName,
      required this.digimonLevel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundHeader() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(digimonImage))),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          children: [
            //title
            Container(
                margin: EdgeInsets.only(top: 256),
                child: Row(
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        Container(
                          height: 24,
                          width: 20,
                          margin: EdgeInsets.only(right: 2),
                        ),
                        SizedBox(
                          width: 1,
                        ),
                      ],
                    ))
                  ],
                )),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 31),
              width: double.infinity,
              // height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18)),
                  color: kWhiteColor),
              child: Container(
                margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      digimonName,
                      style: blackTextStyle.copyWith(
                          fontSize: 20, fontWeight: semibold),
                    ),
                    Text(
                      digimonLevel,
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: semibold),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'About',
                      style: blackTextStyle.copyWith(
                          fontSize: 16, fontWeight: semibold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus mattis vehicula finibus. Ut faucibus erat magna, sit amet ultricies est mattis a. Phasellus risus sem, ultricies id condimentum non, egestas et purus. Sed vulputate ligula quis egestas accumsan. Cras in ultricies arcu. Duis in erat in massa commodo sollicitudin. Nulla eu orci luctus nulla ornare tincidunt. Quisque fermentum libero eget turpis pellentesque posuere. Etiam consequat maximus elit vitae semper. In ex lectus, venenatis non nibh nec, vestibulum tempus magna. Donec id eros tempor, placerat augue id, consequat elit. Fusce sed ante at ipsum placerat sodales.',
                      style: blackTextStyle.copyWith(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Digimon Details"),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [backgroundHeader(), content()],
          ),
        ),
      ),
    );
  }
}
