import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traveltriple/theme.dart';
import 'package:traveltriple/models/favorite-models.dart';
import 'package:glassmorphism/glassmorphism.dart';

class FavoriteWidget extends StatelessWidget {
  final FavoriteModels field;
  FavoriteWidget(this.field);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 193,
      height: 194,
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
          SizedBox(
            height: 40,
          ),
          GlassmorphicContainer(
              width: double.infinity,
              height: 48,
              borderRadius: 6,
              blur: 20,
              border: 1,
              linearGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFffffff).withOpacity(0.1),
                    Color(0xFFFFFFFF).withOpacity(0.05),
                  ],
                  stops: [
                    0.1,
                    1,
                  ]),
              borderGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFffffff).withOpacity(0.5),
                  Color((0xFFFFFFFF)).withOpacity(0.5),
                ],
              ),
              child: Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                field.title,
                                style: whiteStyle.copyWith(
                                  color: whiteColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    'assets/svg/Location.svg',
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    field.daerah,
                                    style: whiteStyle.copyWith(
                                      color: whiteColor,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/svg/heart.svg',
                          ),
                        ],
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}
