import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/Screens/detailscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController keywordController = TextEditingController();

  Widget Header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 70, left: 22),
          child: Text(
            "Hey Dravid",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(101, 101, 101, 1),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 56, right: 22),
          height: 48,
          width: 48,
          child: Image.asset(
            "assets/images/Ellipse1.png",
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget SearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: TextField(
        textInputAction: TextInputAction.done,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          fontSize: 13,
          color: const Color.fromARGB(255, 5, 5, 5),
        ),
        controller: keywordController,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromRGBO(255, 255, 255, 1),
          hintText: "Search your favourite paradise",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLJskENGNhtMvwpClynyum0_O02_3TbqdUNA&s",
              height: 20,
            ),
          ),
        ),
      ),
    );
  }

  Widget SectionTitle(String title,
      {String? actionText, VoidCallback? onActionTap}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 22),
          child: Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
        ),
        if (actionText != null)
          GestureDetector(
            onTap: onActionTap,
            child: Container(
              margin: const EdgeInsets.only(right: 22),
              child: Text(
                actionText,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(32, 169, 247, 1),
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget Card(String imageUrl, String title, String location, String price) {
    return Container(
      margin: const EdgeInsets.only(left: 50, bottom: 10),
      height: 306,
      width: 211,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
            child: Container(
                margin: const EdgeInsets.all(20),
                height: 196,
                width: double.infinity,
                child: Stack(children: [
                  Image.asset(imageUrl, fit: BoxFit.cover),
                  Positioned(
                      top: 15,
                      left: 120,
                      child: Image.asset("assets/images/Group1.png"))
                ])),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 19),
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 19),
            child: Text(
              location,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(72, 72, 72, 1),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 19),
            child: RichText(
              text: TextSpan(
                text: "\$ $price ",
                style: const TextStyle(
                  color: Color.fromRGBO(32, 169, 247, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                children: [
                  const TextSpan(
                    text: " /Month",
                    style: TextStyle(
                      color: Color.fromRGBO(72, 72, 72, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
            SectionTitle("Let’s find your best residence "),
            const SizedBox(height: 10),
            SearchBar(),
            SectionTitle("Most popular", actionText: "See All"),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card("assets/images/Rectangle5.png", "Night Hill Villa",
                      "London, Night Hill", "5900"),
                  Card("assets/images/Rectangle6.png", "Night Villa",
                      "London, New York", "4900"),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SectionTitle("Nearby your location", actionText: "More"),
            const SizedBox(
              height: 10,
            ),
            Row(children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen()));
                  },
                  child: Container(
                      margin: const EdgeInsets.only(left: 22),
                      height: 120,
                      width: 330,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Image.asset("assets/images/Rectangle6.png"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15.0, left: 15.0),
                                child: Text(
                                  "Jumeriah Golf Estates Villa",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromRGBO(72, 72, 72, 1),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.location_on),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "London,Area Plam Jumeriah",
                                    style: GoogleFonts.poppins(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(90, 90, 90, 1),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.bed_outlined),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "4 Bedrooms",
                                    style: GoogleFonts.poppins(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(90, 90, 90, 1),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  const Icon(Icons.bathtub),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "4 Bathrooms",
                                    style: GoogleFonts.poppins(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(90, 90, 90, 1),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100.0),
                                child: RichText(
                                  text: const TextSpan(
                                    text: "\$ 4500 ",
                                    style: TextStyle(
                                      color: Color.fromRGBO(32, 169, 247, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: " /Month",
                                        style: TextStyle(
                                          color: Color.fromRGBO(72, 72, 72, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                        ],
                      )))
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
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
      ),
    );
  }
}
