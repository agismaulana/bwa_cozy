import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';

class SpaceCard extends StatelessWidget {
  final Space space;
  const SpaceCard({ Key? key, required this.space}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => const DetailPage()
          )
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: SizedBox(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.asset(space.imageUrl),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(36)
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/icon_star.png', 
                            width: 22
                          ),
                          Text(
                            '${space.rating}/5', 
                            style: whiteTextStyle.copyWith(
                              fontSize: 13
                            ),
                          ),
                        ],
                      )
                    ),
                  )
                ],
              ),
            )
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name,
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text.rich(
                TextSpan(
                  text: '\$${space.price}',
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
              const SizedBox(
                height: 16,
              ),
              Text(
                '${space.city}, ${space.country}',
                style: greyTextStyle
              )
            ],
          )
        ],
      ),
    );
  }
}