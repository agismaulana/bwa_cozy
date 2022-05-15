import 'package:bwa_cozy/models/bottom_navbar.dart';
import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/widgets/bottom_navbar_item.dart';
import 'package:bwa_cozy/widgets/space_card.dart';
import 'package:bwa_cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/city_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: <Widget>[
            // Note: TItle/Header
            Padding(
              padding: EdgeInsets.only(left: edge, top: edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24
                ),
              )
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Note: Popular Cities
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Popular Cities',
                style: regulerTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  const SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    city: City(1, 'Jakarta', 'assets/images/city1.png', false),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(2, 'Bandung', 'assets/images/city2.png', true),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(3, 'Surabaya', 'assets/images/city3.png', false)
                  ),
                  const SizedBox(
                    width: 24,
                  )
                ]
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //Note: RECOMMENDED SPACE
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Recommended Space',
                style: regulerTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: <Widget>[
                  SpaceCard(
                    space: Space(1, 'Kuretakeso Hatt', 'assets/images/space1.png', 52, 'Bandung', 'Germany', 4),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    space: Space(2, 'Roemah Nenek', 'assets/images/space2.png', 11, 'Seattle', 'Bogor', 5),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    space: Space(3, 'Darrling How', 'assets/images/space3.png', 20, 'Jakarta', 'Indonesia', 3),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Note: Tips & guidance
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Tips & Guidance',
                style: regulerTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: <Widget>[
                  TipsCard(
                    tips: Tips(
                      1,
                      'City Guidelines',
                      'assets/images/tips1.png',
                      '20 Apr',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    tips: Tips(
                      2,
                      'Jakarta Fairship',
                      'assets/images/tips2.png',
                      '11 Dec',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100
            ),
          ],
        ),
      ),
      // Note: Bottom Bar
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge
        ),
        decoration: BoxDecoration(  
          color: const Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            BottomNavbarItem(
              bottomItemNavbar: BottomItemNavbar(
                'assets/images/icon_home.png', 
                true
              ),
            ),
            BottomNavbarItem(
              bottomItemNavbar: BottomItemNavbar(
                'assets/images/icon_mail.png', 
                false
              ),
            ),
            BottomNavbarItem(
              bottomItemNavbar: BottomItemNavbar(
                'assets/images/icon_card.png', 
                false
              ),
            ),
            BottomNavbarItem(
              bottomItemNavbar: BottomItemNavbar(
                'assets/images/icon_love.png', 
                false
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}