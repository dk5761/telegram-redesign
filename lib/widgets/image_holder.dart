import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageHolder extends StatelessWidget {
  String imageUrl;
  final int radius;

  ImageHolder({Key? key, required this.imageUrl, this.radius = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50), // Image border
      child: SizedBox.fromSize(
        size: Size.fromRadius(radius.r), // Image radius
        child: Image.network(
          imageUrl,
          width: 40.w,
          height: 40.h,
          fit: BoxFit.cover,
          errorBuilder:
              (BuildContext context, Object exception, StackTrace? stackTrace) {
            return const Text('😢');
          },
        ),
      ),
    );
  }
}
