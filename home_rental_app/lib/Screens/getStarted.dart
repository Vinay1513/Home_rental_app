import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/Screens/homescreen.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assets/images/bghome.png",
            height: 589,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Container(
                height: 33,
                width: 253,
                child: Text(
                  "Lets find your Paradise",
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(0, 0, 0, 1)),
                )),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            height: 55,
            width: 236,
            child: Column(
              children: [
                Text("Find your perfect dream space",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(101, 101, 101, 1),
                    )),
                SizedBox(
                  height: 2,
                ),
                Text("with just a few clicks",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(101, 101, 101, 1),
                    )),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Container(
              height: 45,
              width: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color.fromRGBO(32, 169, 247, 1)),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 43.0, right: 10, bottom: 10, top: 5),
                child: Text("Get Started",
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 5.15,
                width: 138,
                decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 1)),
              )
            ],
          )
        ],
      ),
    ));
  }
}
