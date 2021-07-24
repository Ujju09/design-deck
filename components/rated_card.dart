import 'package:flutter/material.dart';
import '../constants.dart';

class RatedCards extends StatelessWidget {
  const RatedCards(
      {Key? key,
      required this.shopName,
      required this.nearLocation,
      required this.distance,
      required this.ratings,
      required this.width,
      required this.height})
      : super(key: key);
  final String shopName;
  final String nearLocation;
  final double distance;
  final int ratings;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    double iconSize = 18.0;
    return Card(
      child: Container(
        width: width,
        height: height,
        child: Column(
          children: [
            FlutterLogo(
              size: 96,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$shopName',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                      Text(
                        '$nearLocation',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: numberOfIcons(ratings),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: iconSize,
                        color: Colors.grey,
                      ),
                      Text(
                        '$distance' + ' ' + 'Mile',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> numberOfIcons(int number) {
    List<Icon> listOfIcons = [];
    for (int i = 0; i <= number; i++) {
      listOfIcons.add(
        Icon(
          Icons.star,
          size: 18,
          color: Colors.amber,
        ),
      );
    }
    return listOfIcons;
  }
}

//Making a list out of it.
class RatedCardsList extends StatelessWidget {
  const RatedCardsList(
      {Key? key, required this.cardWidth, required this.cardHeight})
      : super(key: key);
  final double cardHeight;
  final double cardWidth;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return RatedCards(
          shopName: shopNames[index],
          nearLocation: locations[index],
          distance: distances[index],
          ratings: currentRatings[index],
          height: cardHeight,
          width: cardWidth,
        );
      },
      itemCount: 4,
      scrollDirection: Axis.horizontal,
    );
  }
}
