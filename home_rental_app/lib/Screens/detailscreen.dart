import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  Widget Header() {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 64, left: 24),
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios)),
        ),
        Container(
            margin: const EdgeInsets.only(top: 56, left: 161),
            height: 30,
            width: 69,
            child: Text(
              "Details",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(0, 0, 0, 1)),
            )),
      ],
    );
  }

  Widget MiddleSection() {
    return Stack(children: [
      Container(
        margin: const EdgeInsets.only(top: 68, left: 22),
        height: 244,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(30), // Same radius as the container
          child: Image.asset(
            "assets/images/Rectangle5.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
          top: 90, left: 40, child: Image.asset("assets/images/Group1.png"))
    ]);
  }

  Widget TitleSection() {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Night Hill Villa",
                style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(0, 0, 0, 1)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "London,Night Hill",
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(72, 72, 72, 1)),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 121),
            height: 24,
            width: 125,
            child: RichText(
              text: const TextSpan(
                text: "\$ 5900",
                style: TextStyle(
                  color: Color.fromRGBO(32, 169, 247, 1),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                children: [
                  TextSpan(
                    text: " /Month",
                    style: TextStyle(
                      color: Color.fromRGBO(72, 72, 72, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget Card(Icon icon, String title, String number) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      height: 141,
      width: 112,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(255, 255, 255, 1)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon,
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(90, 90, 90, 1)),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              number,
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(0, 0, 0, 1)),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 229, 231, 233),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              MiddleSection(),
              const SizedBox(
                height: 10,
              ),
              TitleSection(),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(const Icon(Icons.bed), "Bedrooms", "5"),
                    Card(const Icon(Icons.bathtub), "Bathrooms", "6"),
                    Card(const Icon(Icons.crop_square), "Square ft",
                        "7,000 sq ft"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 22),
                height: 225,
                width: 346,
                child: Text(
                  "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 1)),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 114.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              border: Border(
                top: BorderSide(
                  color: Color.fromRGBO(221, 221, 221, 0.1),
                  width: 3,
                ), // Top border
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.2),
                  spreadRadius: 10,
                  blurRadius: 6,
                  offset: Offset(7, -3),
                ),
              ],
            ),
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    height: 50,
                    width: 240,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(32, 169, 247, 1),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "Rent Now",
                        style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 5.15,
                        width: 138,
                        decoration:
                            BoxDecoration(color: Color.fromRGBO(0, 0, 0, 1)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
