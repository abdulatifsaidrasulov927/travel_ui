import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui/widgets/coulumn.dart';
import 'package:travel_ui/widgets/row.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _icons = [
    "assets/plane.png",
    "assets/car.png",
    "assets/bus.png",
    "assets/bike.png",
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Where would you \n spend your holiday?",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                for (int i = 0; i < 4; i++)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = i;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(17),
                      height: 60,
                      width: 60,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: selected == i
                            ? Color.fromARGB(255, 17, 20, 211).withOpacity(.2)
                            : Colors.grey.withOpacity(.4),
                        shape: BoxShape.circle,
                      ),
                      child: SizedBox(
                          height: 30,
                          width: 30,
                          child: Image.asset(
                            _icons[i],
                            color: selected == i
                                ? Color.fromARGB(255, 17, 20, 211)
                                    .withOpacity(1)
                                : Colors.grey,
                          )),
                    ),
                  )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Destinations",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All",
                      style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RowCon(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Exclusive Hotels",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All",
                      style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
// * exclusive tiles
            Coulumn(),
          ],
        ),
      ),
    );
  }
}
