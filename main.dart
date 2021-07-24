import 'package:display_app/components/appbar_custom.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/articles_cards.dart';
import 'components/headers.dart';
import 'components/rated_card.dart';
import 'components/coupon_cards.dart';
import 'components/svg_cards.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline4: GoogleFonts.poppins(fontSize: 12, color: Colors.white),
          bodyText1: GoogleFonts.poppins(fontSize: 9, color: Colors.white),
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  void changeIndex(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color(0xff1D2677),
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: changeIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Bookings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on), label: 'Nearby'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomAppBar(),
            SliverToBoxAdapter(
              child: Container(
                height: MediaQuery.of(context).size.height / 6,
                child: DiscountCouponsList(),
              ),
            ),
            Headers(
              leading: 'Highest Rated',
              trailing: 'View all',
            ),
            SliverToBoxAdapter(
              child: Container(
                height: MediaQuery.of(context).size.height / 4.2,
                child: RatedCardsList(
                  cardHeight: MediaQuery.of(context).size.height / 4.2,
                  cardWidth: MediaQuery.of(context).size.width / 1.5,
                ),
              ),
            ),
            Headers(
              leading: 'Services',
              trailing: 'View all',
            ),
            SliverToBoxAdapter(
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                child: SVGList(),
              ),
            ),
            Headers(
              leading: 'Recommended',
              trailing: '',
            ),
            SliverToBoxAdapter(
              child: Container(
                height: MediaQuery.of(context).size.height / 4.6,
                child: RatedCardsList(
                  cardHeight: MediaQuery.of(context).size.height / 4.6,
                  cardWidth: MediaQuery.of(context).size.width / 2.5,
                ),
              ),
            ),
            Headers(
              leading: 'Articles',
              trailing: 'View all',
            ),
            SliverToBoxAdapter(
                child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    child: ArticlesGrid())),
          ],
        ),
      ),
    );
  }
}
