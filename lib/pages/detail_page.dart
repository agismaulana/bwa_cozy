import 'package:bwa_cozy/models/facility.dart';
import 'package:bwa_cozy/models/photo.dart';
import 'package:bwa_cozy/pages/error_page.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/facility_item.dart';
import 'package:bwa_cozy/widgets/photo_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _launchUrl(_url) async {
      if (!await canLaunchUrl(Uri.parse(_url))) {
        return Navigator.push(context, 
          MaterialPageRoute(
            builder: (context) => const ErrorPage()
          )
        );
      }
      launchUrl(Uri.parse(_url));
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/cover.png',
              width: MediaQuery.of(context).size.width, 
              height: 350,
              fit: BoxFit.cover
            ),
            // Note: Title
            ListView(
              children: <Widget>[
                const SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20)
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget> [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kuretakeso Hott',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '\$52',
                                    style: purpleTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' / month',
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                        )
                                      )
                                    ]
                                  )
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/images/icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/images/icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/images/icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/images/icon_star.png',
                                  width: 20,
                                  color: const Color(0xff989BA1),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // Note: Main Facilities
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Main Facilities',
                          style: regulerTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                              facility: Facility(
                                1,
                                'assets/images/icon_kitchen.png',
                                'Kitchen',
                                2,
                              ),  
                            ),
                            FacilityItem(
                              facility: Facility(
                                2,
                                'assets/images/icon_bedroom.png',
                                'Bedroom',
                                3,
                              ),  
                            ),
                            FacilityItem(
                              facility: Facility(
                                3,
                                'assets/images/icon_cupboard.png',
                                'Big Lemari',
                                3,
                              ),  
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // Note: Photos
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Photos',
                          style: regulerTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            SizedBox(
                              width: edge,
                            ),
                            PhotoCard(photo: Photo(1, 'assets/images/photo1.png')),
                            SizedBox(
                              width: edge,
                            ),
                            PhotoCard(photo: Photo(2, 'assets/images/photo2.png')),
                            SizedBox(
                              width: edge,
                            ),
                            PhotoCard(photo: Photo(3, 'assets/images/photo3.png')),
                            SizedBox(
                              width: edge,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // Note: Location
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Location',
                          style: regulerTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge, 
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Jln. Kappan Sukses No. 20 \n Palembang',
                              style: greyTextStyle,
                            ),
                            InkWell(
                              onTap: () {
                                // _launchUrl('https://goo.gl/maps/xtjm5vRTZX1p7NxY9');
                                _launchUrl('qwertyuiop');
                              },
                              child: Image.asset('assets/images/btn_maps.png', width: 40),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: edge
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        child: ElevatedButton(
                          onPressed: () {
                            _launchUrl('tel:+6285320344197');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(purpleColor),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17)
                              )
                            )
                          ),
                          child: Text(
                            'Book Now', 
                            style: whiteTextStyle.copyWith(
                              fontSize: 18
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30, 
                horizontal: edge
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                      'assets/images/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/images/btn_wishlist.png',
                    width: 40,
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}