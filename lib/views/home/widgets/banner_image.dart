import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  final String imageUrl;

  const BannerImage({Key key, this.imageUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(imageUrl),
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 300,
      width: double.infinity,
    ));
  }
}
