import 'package:flutter/material.dart';
import 'package:food_delivery/board/board.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/resource.dart';
import 'package:food_delivery/utils/typography.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: ColorApp().primaryColor,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textSizeCustom(
                text: "FoodPal",
                color: ColorApp().textGreen,
                fontWeight: FontWeight.bold,
                size: 40.0,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                ResourceApp.hero_img,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: textSizeCustom(
                  text: "Food and grocery delivery from restaurants and stores",
                  color: ColorApp().textGreen,
                  fontWeight: FontWeight.w600,
                  size: 20.0,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => BoardPage(),
                )),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorApp().secondColor,
                  ),
                  child: Center(
                    child: textSize17Bold(
                        text: "Start Using", color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
