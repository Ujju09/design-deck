import 'package:flutter/material.dart';

class Headers extends StatelessWidget {
  const Headers({Key? key, required this.leading, this.trailing})
      : super(key: key);
  final String leading;
  final String? trailing;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 12, left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$leading',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff1D2677),
                  ),
            ),
            Text(
              '$trailing',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 14,
                    color: Color(0xff1D2677),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
