// Article card
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard(
      {Key? key,
      required this.articleTitle,
      required this.articlePublisher,
      required this.timeOfPublishing})
      : super(key: key);
  final String articleTitle;
  final String articlePublisher;
  final DateTime timeOfPublishing;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width / 3,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: FlutterLogo(
                  size: 96,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    articleTitle,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    articlePublisher,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 10, color: Colors.grey),
                  ),
                  Text(
                    DateFormat.yMMMd().format(timeOfPublishing),
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
      ),
    );
  }
}

class ArticlesGrid extends StatelessWidget {
  const ArticlesGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1),
      itemBuilder: (BuildContext context, int index) {
        return ArticleCard(
          articleTitle: articles[index],
          articlePublisher: 'Name',
          timeOfPublishing: DateTime.now(),
        );
      },
      itemCount: 4,
    );
  }
}
