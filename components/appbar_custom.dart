import 'package:display_app/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: MediaQuery.of(context).size.height / 8.6,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink, Color(0xff1D2677)],
            stops: [0.3, 0.8],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Company Name',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontSize: kAppBarSize),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: kAppBarSize,
                  ),
                ],
              ),
              Text(
                'My Name',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.white,
                      fontSize: kAppBarMiniSize,
                    ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    size: kAppBarMiniSize,
                    color: Colors.white,
                  ),
                  Text('Time Square Plaza, New York',
                      style: Theme.of(context).textTheme.bodyText1),
                  Icon(
                    Icons.expand_more,
                    size: kAppBarMiniSize,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
