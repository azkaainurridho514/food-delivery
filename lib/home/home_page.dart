import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/resource.dart';
import 'package:food_delivery/utils/typography.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollControllerParent = ScrollController();
  ScrollController scrollControllerChild = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // scrollControllerParent = ScrollController();
    // scrollControllerChild = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Image.asset(ResourceApp.icon),
        title: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorApp().bgGrey,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 3,
              ),
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width * 0.6,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                    hintText: "Type your mind",
                    hintStyle: TextStyle(fontSize: 15),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SvgPicture.asset(
                ResourceApp.ic_search,
                height: 25,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: textSizeCustom(
                  text: "Fast Food",
                  color: ColorApp().textGreen,
                  size: 30,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.center),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: MediaQuery.of(context).size.height * 0.8,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 5,
                  crossAxisCount: 2,
                ),
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: ColorApp().bgCardFastFood,
                        borderRadius: BorderRadius.circular(15)),
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          ResourceApp.img_burger,
                          fit: BoxFit.contain,
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: textSize18Regular(
                              text: "Classic Cheese Burger",
                              color: ColorApp().textGreen),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: ColorApp().bgCardFastFood,
                        borderRadius: BorderRadius.circular(15)),
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          ResourceApp.img_hot_dog,
                          fit: BoxFit.contain,
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: textSize18Regular(
                              text: "Granpa's Hot Dog",
                              color: ColorApp().textGreen),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: ColorApp().bgCardFastFood,
                        borderRadius: BorderRadius.circular(15)),
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          ResourceApp.img_french_fries,
                          fit: BoxFit.contain,
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: textSize18Regular(
                              text: "Very French Fries",
                              color: ColorApp().textGreen),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: ColorApp().bgCardFastFood,
                        borderRadius: BorderRadius.circular(15)),
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          ResourceApp.img_popcron,
                          fit: BoxFit.contain,
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: textSize18Regular(
                              text: "Unicorn Popcorn",
                              color: ColorApp().textGreen),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
