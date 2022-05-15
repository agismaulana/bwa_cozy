import 'package:bwa_cozy/models/photo.dart';
import 'package:flutter/material.dart';

class PhotoCard extends StatelessWidget {
  final Photo photo;
  const PhotoCard({ Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Image.asset(photo.imageUrl),
    );
  }
}