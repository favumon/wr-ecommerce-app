import 'package:flutter/material.dart';

class PageViewIndicator extends StatelessWidget {
  final int pageLength;
  final int selectedIndex;

  const PageViewIndicator({Key key, this.pageLength, this.selectedIndex})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.black26),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          pageLength,
          //Do some slection change animation
          (index) => AnimatedContainer(
            height: 6,
            width: selectedIndex == index ? 12 : 10,
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: selectedIndex == index ? Colors.white : Colors.white10,
                borderRadius:
                    selectedIndex == index ? BorderRadius.circular(3) : null,
                //will switch between Circle or Oval base on selection
                shape: selectedIndex == index
                    ? BoxShape.rectangle
                    : BoxShape.circle),
          ),
        ),
      ),
    );
  }
}
