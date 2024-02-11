
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeturedListViewItem extends StatelessWidget {
  const FeturedListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,//width / height
      child: Container(
        
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          image:const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              AssetsData.testImage,
            ),
          ),
        ),
      ),
    );
  }
}
