import 'package:daily_exercise_app/constants.dart';
import 'package:daily_exercise_app/widgets/bottom_nav_bar.dart';
import 'package:daily_exercise_app/widgets/search_bar.dart';
import 'package:daily_exercise_app/widgets/session_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
            children: <Widget>[
              Container(
                height: size.height * .45,
                decoration: BoxDecoration(
                  color: COLORS['BLUE_LIGHT'],
                  image: DecorationImage(
                    image: AssetImage("assets/images/meditation_bg.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Text(
                          "Meditation",
                          style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(fontWeight: FontWeight.w900)
                        ),
                        SizedBox(
                          height: 10
                        ),
                        Text(
                          "3-10 MIN COURSE",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: size.width * .6,
                          child: Text(
                            "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                            
                          ),
                        ),
                        SizedBox(
                          width: size.width * .5,
                          child: SearchBar()
                        ),
                        Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          children: <Widget>[
                            SessionCard(
                              sessionNum: 1,
                              isDone: true,
                              press: () {}
                            ),
                            SessionCard(
                              sessionNum: 2,
                              press: () {}
                            ),
                            SessionCard(
                              sessionNum: 3,
                              press: () {}
                            ),
                            SessionCard(
                              sessionNum: 4,
                              press: () {}
                            ),
                            SessionCard(
                              sessionNum: 5,
                              press: () {}
                            ),
                            SessionCard(
                              sessionNum: 6,
                              press: () {}
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Meditation",
                          style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(fontWeight: FontWeight.bold)
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          padding: EdgeInsets.all(10),
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 17),
                                blurRadius: 23,
                                spreadRadius: -13,
                                color: COLORS['SHADOW'],
                              )
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/icons/Meditation_women_small.svg"
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      "Basic 2",
                                      style: Theme.of(context)
                                        .textTheme
                                        .subtitle2
                                    ),
                                    Text(
                                      "Start to deepen your practice",
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                  "assets/icons/Lock.svg",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
  }
}

