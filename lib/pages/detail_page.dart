import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/color.dart';
import 'package:flutter_cubit/widgets/app_buttons.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';
import 'package:flutter_cubit/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 3;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.maxFinite,
                    height: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("img/mountain.jpeg"),
                          fit: BoxFit.cover),
                    ),
                  )),
              Positioned(
                  child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      print("i was clicked!");
                    },
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                  ),
                  // IconButton(onPressed: () {}, icon: Icon(Icons.person_2))
                ],
              )),
              Positioned(
                  top: 330,
                  child: Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppLargeText(
                              text: "Yosemite",
                              color: Colors.black87,
                            ),
                            AppLargeText(text: "\$250")
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: AppColors.mainColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            AppText(
                              text: "Usa, California",
                              color: AppColors.mainTextColor,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Wrap(
                              children: List.generate(
                                  5,
                                  (index) => Icon(
                                        Icons.star,
                                        color: index < gottenStars
                                            ? Colors.yellow
                                            : AppColors.textColor2,
                                      )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            AppText(
                              text: "(4.0)",
                              color: AppColors.textColor2,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        AppLargeText(
                          text: "People",
                          color: Colors.black.withOpacity(0.8),
                          size: 20,
                        ),
                        SizedBox(height: 10),
                        AppText(
                          text: "Number of people in your group",
                          color: AppColors.textColor1,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      child: AppButtons(
                                        isIcon: false,
                                        size: 50,
                                        backgroundColor: selectedIndex == index
                                            ? Colors.black
                                            : Colors.white,
                                        color: selectedIndex == index
                                            ? Colors.white
                                            : Colors.black,
                                        borderColor: AppColors.buttonBackground,
                                        text: (index + 1).toString(),
                                      ),
                                    ),
                                  )),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Column(
                          children: [
                            AppLargeText(
                              text: "Description",
                              color: Colors.black.withOpacity(0.8),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Column(
                          children: [
                            AppText(
                              text:
                                  "Yosemite national park is located in central sierra in the US State of California, it is located near the wild protected areas.",
                              size: 20,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 20),
                              child: Row(
                                children: [
                                  AppButtons(
                                      isIcon: true,
                                      icon: Icons.favorite_border,
                                      size: 60,
                                      color: Colors.black,
                                      backgroundColor: Colors.white,
                                      borderColor: Colors.black),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  ResponsiveButton(
                                    isResponsive: true,
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
