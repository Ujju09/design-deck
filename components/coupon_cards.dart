import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

Card couponCards(int discountAmount, BuildContext context) {
  return Card(
    color: Colors.amber,
    child: Container(
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width / 3,
      child: Center(
        child: Text(
          '\$' + '$discountAmount' + ' ' + 'Off',
          style: GoogleFonts.poppins(fontSize: 16),
        ),
      ),
    ),
  );
}

//Coupon card list

class DiscountCouponsList extends StatelessWidget {
  const DiscountCouponsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return couponCards(
          discountAmounts[index],
          context,
        );
      },
      itemCount: 5,
    );
  }
}
