import 'package:flutter/material.dart';
import 'package:traveltriple/models/category-models.dart';
import 'package:traveltriple/models/favorite-models.dart';
import 'package:traveltriple/models/info-category-models.dart';
import 'package:traveltriple/theme.dart';
import 'package:traveltriple/widget/category-widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traveltriple/widget/favorite-widget.dart';
import 'package:traveltriple/widget/info-category-widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/svg/Frame.svg',
                      ),
                      Image.asset(
                        'assets/img/Ellipse 1.jpg',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Hai, Dicky',
                    style: greyStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Text(
                    'Eksplore Tempat\nFavoritmu Di Indonesia',
                    style: blackStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  // search
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 20),
                        fillColor: whiteColor2,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Search',
                        hintStyle: greyStyle.copyWith(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 32,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        InfoCategoryWidget(
                          InfoCategoryModels(name: 'All'),
                        ),
                        InfoCategoryWidget(
                          InfoCategoryModels(name: 'Nearby'),
                        ),
                        InfoCategoryWidget(
                          InfoCategoryModels(name: 'Popular'),
                        ),
                        InfoCategoryWidget(
                          InfoCategoryModels(name: 'Best'),
                        ),
                        InfoCategoryWidget(
                          InfoCategoryModels(name: 'Recomended'),
                        ),
                        InfoCategoryWidget(
                          InfoCategoryModels(name: 'Expensive'),
                        ),
                        InfoCategoryWidget(
                          InfoCategoryModels(name: 'Inexpensive'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // slider
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Kategory',
                          style: blackStyle.copyWith(
                              fontSize: 15, fontWeight: FontWeight.w700)),
                      Text('Lihat semua',
                          style: greyStyle.copyWith(
                              fontSize: 10, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 115,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CategoryWidget(CategoryModels(
                          name: 'Gunung',
                          img: 'assets/img/Rectangle 4.png',
                        )),
                        CategoryWidget(CategoryModels(
                          name: 'Pantai',
                          img: 'assets/img/Rectangle 6.png',
                        )),
                        CategoryWidget(CategoryModels(
                          name: 'Danau',
                          img: 'assets/img/Rectangle 8.png',
                        )),
                        CategoryWidget(CategoryModels(
                          name: 'Taman',
                          img: 'assets/img/Rectangle 10.png',
                        )),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Favorit Destinasi',
                          style: blackStyle.copyWith(
                              fontSize: 15, fontWeight: FontWeight.w700)),
                      Text('Lihat semua',
                          style: greyStyle.copyWith(
                              fontSize: 10, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        FavoriteWidget(FavoriteModels(
                            title: 'Pantai Ubud',
                            daerah: 'Bali , Indonesia',
                            img: 'assets/img/img_3.jpg')),
                        FavoriteWidget(FavoriteModels(
                            title: 'Gunung Semeru',
                            daerah: 'Yogyakarta, Indonesia',
                            img: 'assets/img/img_2.jpg')),
                        FavoriteWidget(
                          FavoriteModels(
                              title: 'Bukit Teletubies',
                              daerah: 'Yogyakarta, Indonesia',
                              img: 'assets/img/img_1.jpg'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
