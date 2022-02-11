import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:traveltriple/theme.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> with TickerProviderStateMixin {
  List<dynamic> _onboarding = [
    {
      'title': 'TravelTriple',
      'sub_title': 'Jelajahi seluruh tempat wisata favoritmu di seluruh dunia.',
      'image': 'assets/img/img_1.jpg',
    },
    {
      'title': 'TravelTriple',
      'sub_title': 'Jelajahi seluruh tempat wisata favoritmu di seluruh dunia.',
      'image': 'assets/img/img_2.jpg'
    },
    {
      'title': 'TravelTriple',
      'sub_title': 'Jelajahi seluruh tempat wisata favoritmu di seluruh dunia.',
      'image': 'assets/img/img_3.jpg'
    },
    {
      'title': 'TravelTriple',
      'sub_title': 'Jelajahi seluruh tempat wisata favoritmu di seluruh dunia.',
      'image': 'assets/img/img_4.jpg'
    }
  ];

  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 20), vsync: this)
        ..repeat(reverse: true);

  late final Animation<double> _animation = Tween<double>(begin: 1.0, end: 1.5)
      .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        onPageChanged: (int index) {
          _controller.value = 0.0;
          _controller.forward();
        },
        itemBuilder: (context, index) {
          return Container(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(),
                  child: ScaleTransition(
                    scale: _animation,
                    child: Image.network(
                      _onboarding[index]['image'],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                            Colors.black.withOpacity(0.9),
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(0.2),
                            Colors.black.withOpacity(0.1)
                          ])),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FadeInDown(
                              duration: Duration(milliseconds: 500),
                              child: Text(_onboarding[index]['title'],
                                  style: whiteStyle.copyWith(
                                      color: whiteColor,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            FadeInDown(
                                delay: Duration(milliseconds: 100),
                                duration: Duration(milliseconds: 800),
                                child: Text(_onboarding[index]['sub_title'],
                                    style: whiteStyle.copyWith(
                                      color: greyColor2,
                                      fontSize: 16,
                                    ))),
                            SizedBox(
                              height: 50,
                            ),
                            FadeInLeft(
                              delay: Duration(milliseconds: 100),
                              duration: Duration(milliseconds: 1000),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    onPressed: () {},
                                    color: whiteColor,
                                    padding: EdgeInsets.only(
                                        right: 5, left: 30, top: 5, bottom: 5),
                                    child: Container(
                                      height: 40,
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Row(
                                        children: [
                                          Text('Join Now',
                                              style: blackStyle.copyWith(
                                                fontSize: 18,
                                                color: blackColor,
                                              )),
                                          Spacer(),
                                          Container(
                                              padding: EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                  color: Colors.orange.shade300,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40)),
                                              child: Icon(
                                                Icons.arrow_forward,
                                                color: Colors.orange.shade100,
                                              )),
                                        ],
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(height: 50),
                          ])),
                )
              ],
            ),
          );
        },
        itemCount: _onboarding.length,
        controller: PageController(viewportFraction: 1.0),
      ),
    );
  }
}
