import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traveltriple/theme.dart';
import 'package:traveltriple/models/info-category-models.dart';

class InfoCategoryWidget extends StatelessWidget {
  final InfoCategoryModels field;
  InfoCategoryWidget(this.field);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.only(left: 11, right: 11),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  field.name,
                  style: blackStyle.copyWith(
                    color: blackColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
