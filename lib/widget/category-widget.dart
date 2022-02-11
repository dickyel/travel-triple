import 'package:flutter/material.dart';
import 'package:traveltriple/theme.dart';
import 'package:traveltriple/models/category-models.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryModels field;
  CategoryWidget(this.field);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 113,
      height: 89,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.only(
        top: 80,
        left: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(field.img),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            field.name,
            style: whiteStyle.copyWith(
              color: whiteColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
