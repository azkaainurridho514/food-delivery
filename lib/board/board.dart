import 'package:flutter/material.dart';
import 'package:food_delivery/home/home_page.dart';
import 'package:food_delivery/start_page/start.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/resource.dart';
import 'package:food_delivery/utils/typography.dart';

class BoardPage extends StatefulWidget {
  const BoardPage({super.key});

  @override
  State<BoardPage> createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => StartPage(),
        ));
        return true;
      },
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                child: Image.asset(
                  ResourceApp.login_hero_icon,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              textSizeCustom(
                text: "Log in with phone",
                color: ColorApp().textGreen,
                fontWeight: FontWeight.w700,
                size: 25,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Your number phone",
                  prefixText: "+62 | ",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: ColorApp().primaryColor,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: ColorApp().secondColor,
                      width: 1.0,
                    ),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => HomePage(),
                )),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 17),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorApp().secondColor,
                  ),
                  child: Center(
                    child: textSize17Bold(text: "Log in", color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Divider(
                      color: Colors.black26,
                      thickness: 1.0,
                    ),
                  ),
                  textSize17Bold(
                    color: ColorApp().textGrey,
                    text: "Or",
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Divider(
                      color: Colors.black26,
                      thickness: 1.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  print("Login with GOOGLE");
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorApp().bgGrey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        child: Image.asset(
                          ResourceApp.ic_google,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      textSize15Bold(
                        text: "Continue with Google",
                        color: ColorApp().textGrey,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  print("Login with APPLE");
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorApp().bgGrey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        child: Image.asset(
                          ResourceApp.ic_apple,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      textSize15Bold(
                        text: "Continue with Apple",
                        color: ColorApp().textGrey,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  print("Login with FACEBOOK");
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorApp().bgGrey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        child: Image.asset(
                          ResourceApp.ic_fb,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      textSize15Bold(
                        text: "Continue with Facebook",
                        color: ColorApp().textGrey,
                      )
                    ],
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
