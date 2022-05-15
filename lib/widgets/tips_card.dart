import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  const TipsCard({ Key? key, required this.tips }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          child: SizedBox(
            width: 80,
            height: 80,
            child: Stack(
              children: [
                Image.asset(tips.imageUrl),
                const SizedBox(
                  width: 20,
                )               
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: blackTextStyle.copyWith(
                fontSize: 18
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Updated ${tips.updatedAt}',
              style: greyTextStyle
            )
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {}, 
          icon: Icon(
              Icons.chevron_right,
              color: greyColor,
            ),
          )
      ],
    );
  }
}