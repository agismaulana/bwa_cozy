import 'package:bwa_cozy/models/facility.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final Facility facility;
  const FacilityItem({ Key? key, required this.facility }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          facility.imageUrl,
          width: 32,
        ),
        const SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: '${facility.qty}',
            style: purpleTextStyle,
            children:[
              TextSpan(
                text: ' ${facility.name}',
                style: greyTextStyle
              )
            ] 
          )
        )
      ],
    );
  }
}