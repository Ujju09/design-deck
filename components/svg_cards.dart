import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SVGCard extends StatelessWidget {
  const SVGCard({Key? key, required this.color}) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Card(
        child: Container(
          height: MediaQuery.of(context).size.height / 5,
          width: MediaQuery.of(context).size.height / 5,
          color: color,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(
                  'images/makeup.svg',
                  fit: BoxFit.contain,
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.height / 10,
                  color: Colors.white,
                ),
                Text(
                  'Beautification',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Horizontally scrolling list
class SVGList extends StatelessWidget {
  const SVGList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        List<Color> colors = [
          Colors.blue,
          Colors.red,
          Colors.pink,
          Colors.purple
        ];
        return SVGCard(
          color: colors[index],
        );
      },
      itemCount: 4,
      scrollDirection: Axis.horizontal,
    );
  }
}
